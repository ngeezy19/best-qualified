package com.bestqualified.servlets.community;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitCommunity extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9201165808079484539L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bq/community/home.jsp");
		rd.include(req, resp);
	}

}
