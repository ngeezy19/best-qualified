package com.bestqualified.servlets;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.SignUpBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class SignUpServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3590228723253152605L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String firstName = req.getParameter("first-name");
		String lastName = req.getParameter("last-name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		SignUpBean sub = new SignUpBean();
		sub.setEmail(email);
		sub.setPassword(password);
		sub.setFirstName(firstName);
		sub.setLastName(lastName);
		
		HttpSession session = req.getSession();
		synchronized (session) {
			session.setAttribute("sub", sub);
		}
	
		if(!Util.notNull(firstName)) {
			synchronized (session) {
				session.setAttribute("signupError", "You have to enter your first name.");
			}
			resp.sendRedirect(resp.encodeRedirectURL("/sign-up-page"));
			return;
		}
		
		if(!Util.notNull(lastName)) {
			synchronized (session) {
				session.setAttribute("signupError", "You have to enter your last name.");
			}
			resp.sendRedirect(resp.encodeRedirectURL("/sign-up-page"));
			return;
		}
		
		if(!Util.notNull(email)) {
			synchronized (session) {
				session.setAttribute("signupError", "You have to enter your email address.");
			}
			resp.sendRedirect(resp.encodeRedirectURL("/sign-up-page"));
			return;
		}
		
		if(!Util.notNull(password)) {
			synchronized (session) {
				session.setAttribute("signupError", "You have to enter a password");
				
			}
			resp.sendRedirect(resp.encodeRedirectURL("/sign-up-page"));
			return;
		}
		
		if(GeneralController.userEmailExist(email)) {
			synchronized (session) {
				session.setAttribute(
						"signupError",
						email
								+ " already exist. If it belongs to you, <a href='/sign-in'><strong>Sign In</strong></a>");
			}
			resp.sendRedirect(resp.encodeRedirectURL("/sign-up-page"));
			return;
		} else {
			User u = Util.signUpBeanToUser(sub);
			u.setVerified(false);
			Entity e = EntityConverter.userToEntity(u);
			GeneralController.create(e);
			synchronized (session) {
				session.removeAttribute("signupError");
				session.setAttribute("user", u);
			}
		}
		resp.sendRedirect(resp.encodeRedirectURL("/endpoint/verification-code"));
	}

}
