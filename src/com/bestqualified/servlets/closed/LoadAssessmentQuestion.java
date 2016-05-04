package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.AssessmentTest;
import com.google.gson.Gson;

public class LoadAssessmentQuestion extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3061002677896419763L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("assessmentTest");
		}
		if(o!=null) {
			AssessmentTest at = (AssessmentTest) o;
			resp.setContentType("application/json");
			Gson gson = new Gson();
			String json = gson.toJson(at);
			resp.getWriter().write(json);
			
		}
	}

}
