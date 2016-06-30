package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bestqualified.bean.ProView;
import com.google.appengine.api.search.Index;
import com.google.appengine.api.search.IndexSpec;
import com.google.appengine.api.search.Query;
import com.google.appengine.api.search.QueryOptions;
import com.google.appengine.api.search.Results;
import com.google.appengine.api.search.ScoredDocument;
import com.google.appengine.api.search.SearchServiceFactory;

public class AllCandidates extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7661454506305719499L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		QueryOptions options = QueryOptions
				.newBuilder()
				.setLimit(10)
				.setFieldsToReturn("firstName", "lastName", "highestEducationLevel",
						"yearsOfExperience","pictureUrl").build();
		Query query = Query.newBuilder().setOptions(options).build();
		IndexSpec indexSpec = IndexSpec.newBuilder().setName("professionals").build();
		Index index = SearchServiceFactory.getSearchService().getIndex(
				indexSpec);
		Results<ScoredDocument> result = index.search(query);
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
		//return pvs;
		resp.sendRedirect(resp.encodeRedirectURL("/bq/closed/find-candidate"));
	}

}
