package com.bestqualified.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JobSearch extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3204921878727658156L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.sendRedirect(resp.encodeRedirectURL("/bq/open/job-result"));
	}
}
