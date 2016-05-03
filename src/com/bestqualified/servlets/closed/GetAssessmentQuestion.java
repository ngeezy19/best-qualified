package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bestqualified.entities.AssessmentQuestion;
import com.bestqualified.util.Util;
import com.google.gson.Gson;

public class GetAssessmentQuestion extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1787927409263522771L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String level = req.getParameter("level");
		List<AssessmentQuestion> qs  = Util.getAssessmentQuestions(level.toUpperCase());
		resp.setContentType("application/json");
		
		Gson gson = new Gson();
		String json = gson.toJson(qs);
		resp.getWriter().write(json);
	}

}
