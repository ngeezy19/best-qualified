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
import com.bestqualified.util.StringConstants;
import com.bestqualified.util.Util;
import com.google.appengine.api.search.Cursor;
import com.google.appengine.api.search.Field;
import com.google.appengine.api.search.Index;
import com.google.appengine.api.search.IndexSpec;
import com.google.appengine.api.search.Query;
import com.google.appengine.api.search.QueryOptions;
import com.google.appengine.api.search.Results;
import com.google.appengine.api.search.ScoredDocument;
import com.google.appengine.api.search.SearchServiceFactory;
import com.google.appengine.api.search.SortExpression;
import com.google.appengine.api.search.SortOptions;

public class AllJobsServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1087739441918527371L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		JobSearchResult jsr = new JobSearchResult();
		Cursor cursor = Cursor.newBuilder().build();
		SortOptions sortOptions = SortOptions
				.newBuilder()
				.addSortExpression(
						SortExpression
								.newBuilder()
								.setExpression("datePosted")
								.setDirection(
										SortExpression.SortDirection.DESCENDING))
				.build();
		QueryOptions options = QueryOptions
				.newBuilder()
				.setLimit(Integer.parseInt(String.valueOf(jsr.getNumberToFetch())))
				.setFieldsToReturn("jobTitle", "companyName", "location",
						"datePosted").setSortOptions(sortOptions)
				.setCursor(cursor).build();
		Query query = Query.newBuilder().setOptions(options).build("");
		IndexSpec indexSpec = IndexSpec.newBuilder().setName("jobs").build();
		Index index = SearchServiceFactory.getSearchService().getIndex(
				indexSpec);
		Results<ScoredDocument> result = index.search(query);
		
		long totalMatches = result.getNumberFound();
		int numberOfDocsReturned = result.getNumberReturned();
		List<InterestedJob> ijs = new ArrayList<>();
		for (ScoredDocument sd : result) {
			InterestedJob ij = new InterestedJob();
			ij.setCompanyName(sd.getOnlyField("companyName").getText());
			ij.setJobKey(sd.getId());
			Iterable<Field> itr = sd.getFields("jobTitle");
			for(Field f : itr) {
				ij.setJobTitle(f.getAtom());
				break;
			}
			
			ij.setPictureUrl(StringConstants.DEFAULT_COMPANY_LOGO);
			ij.setPostedTime(Util.getPostedTime(sd.getOnlyField("datePosted")
					.getDate()));
			ij.setLocation(sd.getOnlyField("location").getAtom());
			ijs.add(ij);
		}
		jsr.setIjobs(ijs);
		cursor = result.getCursor();
		if(cursor != null) {
			jsr.setCursor(cursor.toWebSafeString());
		}else {
			jsr.setCursor("null");
		}
		jsr.setTotalNumber(totalMatches);
		jsr.setNumberFetched(numberOfDocsReturned);
		
		HttpSession session = req.getSession();
		synchronized (session) {
			session.setAttribute("jobSearchResult", jsr);
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/open/jobs-search-result"));
	}

}
