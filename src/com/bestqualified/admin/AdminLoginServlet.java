package com.bestqualified.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.User;
import com.bestqualified.util.Util;

public class AdminLoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -186851539590755821L;
	
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		resp.setContentType("application/json");
		
		HttpSession session = req.getSession();
		
		if(!Util.notNull(username)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter your username"); 
				return;
				//session.setAttribute("signinError", "Please enter your username");
			}
			
		}
		
		if(!Util.notNull(password)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter your password");
				return;
			}
			
		}
		
		
		
		User u = GeneralController.getUserByCredentials(username, password);
		
		if(u == null) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "User does not exist");
				return;
			}
			
		} else {
			synchronized (session) {
				session.setAttribute("user", u);
			}
			resp.getWriter().write(resp.encodeRedirectURL("/bq/admin/dashboard"));
		
		}
	}
}


		

