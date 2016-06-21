package com.bestqualified.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InitSignUp extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7414094817708306876L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		synchronized (session) {
			session.removeAttribute("sub");
			session.removeAttribute("signupError");
		}
		
		resp.sendRedirect(resp.encodeRedirectURL("/sign-up-page"));
	}

}
