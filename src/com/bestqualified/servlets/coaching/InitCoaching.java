package com.bestqualified.servlets.coaching;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitCoaching extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3604544652334444951L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bq/coaching/home.jsp");
		rd.include(req, resp);
	}
}
