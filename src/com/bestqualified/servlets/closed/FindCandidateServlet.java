package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.CandidateSearchResult;
import com.bestqualified.bean.InterestedJob;
import com.bestqualified.bean.JobSearchResult;
import com.bestqualified.bean.ProView;
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

public class FindCandidateServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1391710488116272624L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String num = req.getParameter("number-of-entries");
		String[] careerLevel = req.getParameterValues("careerLevel");
		String[] location = req.getParameterValues("location");
		String[] jobType = req.getParameterValues("jobType");
		String[] educationLevel = req.getParameterValues("educationLevel");
		String[] experience = req.getParameterValues("experience");
		String title = req.getParameter("title");

		String qStr = "";
		if (Util.notNull(title)) {
			qStr += title.trim() + " ";
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

		if (Util.notNull(educationLevel)) {
			qStr += "(";
			for (int i = 0; i < educationLevel.length; i++) {
				qStr += "highestEducationLevel:" + educationLevel[i];
				if (i < educationLevel.length - 1) {
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
				qStr += "currentState:" + location[i];
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

	

		HttpSession session = req.getSession();
		CandidateSearchResult csr = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("candidateSearchResult");
		}

		if (o != null) {
			csr = (CandidateSearchResult) o;
		} else {
			csr = new CandidateSearchResult();
		}

		qStr = qStr.trim();
		if (!Util.notNull(num)) {
			num = String.valueOf(csr.getNumberToFetch());
		}

		Cursor cursor = null;
		String c = csr.getCursor();
		if (c != null && c.isEmpty()) {
			cursor = Cursor.newBuilder().build(csr.getCursor());
		} else {
			cursor = Cursor.newBuilder().build();
		}

		SortOptions sortOptions = SortOptions
				.newBuilder()
				.addSortExpression(
						SortExpression
								.newBuilder()
								.setExpression("yearsOfExperience")
								.setDirection(
										SortExpression.SortDirection.DESCENDING))
				.build();
		QueryOptions options = QueryOptions
				.newBuilder()
				.setLimit(Integer.parseInt(num))
				.setFieldsToReturn("firstName", "lastName", "highestEducationLevel",
						"yearsOfExperience","pictureUrl").setSortOptions(sortOptions)
				.setCursor(cursor).build();
		Query query = Query.newBuilder().setOptions(options).build(qStr);
		IndexSpec indexSpec = IndexSpec.newBuilder().setName("professionals").build();
		Index index = SearchServiceFactory.getSearchService().getIndex(
				indexSpec);
		Results<ScoredDocument> result = index.search(query);

		long totalMatches = result.getNumberFound();
		int numberOfDocsReturned = result.getNumberReturned();
		List<ProView> pvs = new ArrayList<>();
		for (ScoredDocument sd : result) {
			ProView pv = new ProView();
			pv.setFirstName(sd.getOnlyField("firstName").getText());
			pv.setLastName(sd.getOnlyField("lastName").getText());
			//pv.setPictureUrl(sd.getOnlyField("pictureUrl").getAtom());
			pv.setYearsOfExperience(sd.getOnlyField("yearsOfExperience").getAtom());
			pv.setHighestQualification(sd.getOnlyField("highestEducationLevel").getText());
			pvs.add(pv);
		}
		csr.setCandidates(pvs);;
		cursor = result.getCursor();
		if (cursor != null) {
			csr.setCursor(cursor.toWebSafeString());
		} else {
			csr.setCursor(null);
		}
		csr.setTotalNumber(totalMatches);
		csr.setNumberFetched(numberOfDocsReturned);

		synchronized (session) {
			session.setAttribute("candidateSearchResult", csr);
		}

		resp.setContentType("äpplication/json");
		String json = new Gson().toJson(csr);
		resp.getWriter().write(json);

	}

}
