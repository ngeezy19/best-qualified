package com.bestqualified.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InitForgotPassword extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1311245005214873670L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		synchronized (session) {
			session.removeAttribute("forgotPasswordError");
		}
		resp.sendRedirect("/endpoint/forgot-password-page");
	}

}
