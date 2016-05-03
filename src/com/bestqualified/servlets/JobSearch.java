package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.InterestedJob;
import com.bestqualified.bean.JobSearchResult;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Company;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.SearchDocumentIndexService;
import com.bestqualified.util.StringConstants;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.search.Cursor;
import com.google.appengine.api.search.FacetRequest;
import com.google.appengine.api.search.Query;
import com.google.appengine.api.search.QueryOptions;
import com.google.appengine.api.search.Results;
import com.google.appengine.api.search.ScoredDocument;
import com.google.appengine.api.search.SortExpression;
import com.google.appengine.api.search.SortExpression.SortDirection;
import com.google.appengine.api.search.SortOptions;

public class JobSearch extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3204921878727658156L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String keyword = req.getParameter("searchString");
		String company = req.getParameter("company");
		String title = req.getParameter("title");
		String location = req.getParameter("location");
		String[] experience = req.getParameterValues("experience");
		String[] datePosted = req.getParameterValues("datePosted");
		String val = "";
		
		Query.Builder b = Query.newBuilder();
		b.setEnableFacetDiscovery(true);
		if(Util.notNull(keyword)) {
			val+=keyword+" ";
		}
		if(Util.notNull(company)) {
			val+=company+" ";
			b.addReturnFacet(FacetRequest.newBuilder().setName("company").addValueConstraint(company).build());
		}
		if(Util.notNull(title)) {
			val+=title+" ";
			b.addReturnFacet(FacetRequest.newBuilder().setName("jobTitle").addValueConstraint(title).build());
		}
		if(Util.notNull(location)) {
			val+=location+" ";
			b.addReturnFacet(FacetRequest.newBuilder().setName("location").addValueConstraint(location).build());
		}
		if(Util.notNull(experience)) {
			FacetRequest.Builder fqb = FacetRequest.newBuilder().setName("experience");
			for(String s: experience) {
				fqb.addValueConstraint(s);
			}
			b.addReturnFacet(fqb.build());
			
		}
		if(Util.notNull(datePosted)) {
			//if() {}
		}
		
		QueryOptions request = QueryOptions
				.newBuilder()
				.setLimit(20)
				.setFieldsToReturn("companyKey", "companyName", "jobTitle",
						"datePosted")
				.setSortOptions(
						SortOptions
								.newBuilder()
								.addSortExpression(
										SortExpression
												.newBuilder()
												.setExpression("datePosted")
												.setDirection(
														SortDirection.DESCENDING)))
				.setCursor(Cursor.newBuilder().build()).build();
		Query query = b.setOptions(request).build(val);

		HttpSession session = req.getSession();
	
			
			Results<ScoredDocument> result = SearchDocumentIndexService
					.retrieveDocuments(query);
			List<InterestedJob> ijs = new ArrayList<>();
			for (ScoredDocument sd : result) {
				InterestedJob ij = new InterestedJob();
				Company c = EntityConverter.entityToCompany(GeneralController
						.findByKey(KeyFactory.stringToKey(sd.getOnlyField(
								"companyKey").getText())));
				if (c != null) {
					ij.setCompanyKey(sd.getOnlyField("companyKey").getText());
					ij.setCompanyName(sd.getOnlyField("companyName").getText());
					ij.setJobKey(sd.getId());
					ij.setJobTitle(sd.getOnlyField("jobTitle").getText());
					if (c.getLogo() == null) {
						ij.setPictureUrl(StringConstants.DEFAULT_COMPANY_LOGO);
					} else {
						ij.setPictureUrl(Util.getPictureUrl(c.getLogo()));
					}
					ij.setPostedTime(Util.getPostedTime(sd.getOnlyField(
							"datePosted").getDate()));
				}
				ijs.add(ij);

			}
			JobSearchResult jsr = new JobSearchResult();
			jsr.setIjobs(ijs);
			jsr.setSearchString(val);
			synchronized (session) {
				session.setAttribute("jobSearchResult", jsr);
			}
			resp.sendRedirect(resp.encodeRedirectURL("/bq/open/job-result"));
		

	}
}
