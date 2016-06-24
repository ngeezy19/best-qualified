package com.bestqualified.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.User;
import com.bestqualified.util.Util;

public class ForgotPassword extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5493584875660081267L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email = req.getParameter("email");
		HttpSession session = req.getSession();
		if (Util.notNull(email)) {
			if (GeneralController.userEmailExist(email)) {
				User u = GeneralController.findUserByEmail(email);
				synchronized (session) {
					session.setAttribute("user", u);
					session.setAttribute("fromForgotPassword", true);
					session.removeAttribute("forgotPasswordError");
				}
				resp.sendRedirect("/endpoint/verification-code");
			}else {
				synchronized (session) {
					session.setAttribute("forgotPasswordError", email+" does not belong to any account.");
				}
				resp.sendRedirect(resp.encodeRedirectURL("/endpoint/forgot-password-page"));
				return;
			}
		} else {
			synchronized (session) {
				session.setAttribute("forgotPasswordError", "Enter your email");
			}
			resp.sendRedirect(resp.encodeRedirectURL("/endpoint/forgot-password-page"));
			return;

		}
	}

}
