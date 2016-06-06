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
import com.google.gson.Gson;

public class FindJobServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6732945690537314567L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String num = req.getParameter("number-of-entries");
		String[] salaryRange = req.getParameterValues("salaryRange");
		String[] careerLevel = req.getParameterValues("careerLevel");
		String[] location = req.getParameterValues("location");
		String[] jobType = req.getParameterValues("jobType");
		String[] jobCategory = req.getParameterValues("jobCategory");
		String[] experience = req.getParameterValues("experience");
		String title = req.getParameter("title");

		String qStr = "";
		if (Util.notNull(title)) {
			qStr += "jobTitle:" + title.trim() + " ";
		}
		if (Util.notNull(experience)) {
			qStr += "(";
			for (int i = 0; i < experience.length; i++) {
				qStr += "experience:" + experience[i];
				if (i < experience.length - 1) {
					qStr += " OR ";
				}
			}
			qStr += ") ";
		}

		if (Util.notNull(jobCategory)) {
			qStr += "(";
			for (int i = 0; i < jobCategory.length; i++) {
				qStr += "jobCategory:" + jobCategory[i];
				if (i < jobCategory.length - 1) {
					qStr += " OR ";
				}
			}
			qStr += ") ";
		}

		if (Util.notNull(jobType)) {
			qStr += "(";
			for (int i = 0; i < jobType.length; i++) {
				qStr += "jobType:" + jobType[i];
				if (i < jobType.length - 1) {
					qStr += " OR ";
				}
			}
			qStr += ") ";
		}

		if (Util.notNull(location)) {
			qStr += "(";
			for (int i = 0; i < location.length; i++) {
				qStr += "location:" + location[i];
				if (i < location.length - 1) {
					qStr += " OR ";
				}
			}
			qStr += ") ";
		}

		if (Util.notNull(careerLevel)) {
			qStr += "(";
			for (int i = 0; i < careerLevel.length; i++) {
				qStr += "careerLevel:" + careerLevel[i];
				if (i < careerLevel.length - 1) {
					qStr += " OR ";
				}
			}
			qStr += ") ";
		}

		if (Util.notNull(salaryRange)) {
			qStr += "(";
			for (int i = 0; i < salaryRange.length; i++) {
				qStr += "salaryRange:" + salaryRange[i];
				if (i < salaryRange.length - 1) {
					qStr += " OR ";
				}
			}
			qStr += ") ";
		}

		HttpSession session = req.getSession();
		JobSearchResult jsr = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("jobSearchResult");
		}

		if (o != null) {
			jsr = (JobSearchResult) o;
		} else {
			jsr = new JobSearchResult();
		}

		qStr = qStr.trim();
		if (!Util.notNull(num)) {
			num = String.valueOf(jsr.getNumberToFetch());
		}

		Cursor cursor = null;
		String c = jsr.getCursor();
		if (c!=null && c.isEmpty()) {
			cursor = Cursor.newBuilder().build(jsr.getCursor());
		} else {
			cursor = Cursor.newBuilder().build();
		}

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
				.setLimit(Integer.parseInt(num))
				.setFieldsToReturn("jobTitle", "companyName", "location",
						"datePosted").setSortOptions(sortOptions)
				.setCursor(cursor).build();
		Query query = Query.newBuilder().setOptions(options).build(qStr);
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
			jsr.setCursor(null);
		}
		jsr.setTotalNumber(totalMatches);
		jsr.setNumberFetched(numberOfDocsReturned);
		
		synchronized (session) {
			session.setAttribute("jobSearchResult", jsr);
		}
		
		resp.setContentType("äpplication/json");
		String json = new Gson().toJson(jsr);
		resp.getWriter().write(json);
		
		

	}

}
