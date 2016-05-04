package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.AssessmentQuestionBean;
import com.bestqualified.bean.AssessmentTest;
import com.bestqualified.entities.AssessmentQuestion;
import com.bestqualified.entities.User;
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
		HttpSession session = req.getSession();
		User u = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}
		if(o!=null) {
			String level = req.getParameter("exp-level");
			List<AssessmentQuestion> qs  = Util.getAssessmentQuestions(level.toUpperCase());
			Collections.shuffle(qs);
			Map<String,Object> map = Util.toAssessmentQuestionBean(qs);
			AssessmentTest at = new AssessmentTest();
			at.setQuestions((List<AssessmentQuestionBean>) map.get("q"));
			at.setTime(30);
			at.setCategory(level);
			u=(User) o;
			at.setCandidateName(u.getFirstName()+" "+u.getLastName());
			
			synchronized (session) {
				session.setAttribute("assessmentTest", at);
			}
			
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bq/close/assessment-test.jsp");
			rd.include(req, resp);
			
		}
		
		
		
		
	}

}
