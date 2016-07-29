package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NewPost extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7883372553557039640L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		synchronized (session) {
			session.removeAttribute("newPostError");
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/close/community/new-post"));
	}

}
