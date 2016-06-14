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
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
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
		
		String ut = Util.toSHA512(password);
		
		
		User u = GeneralController.getUserByCredentials(username, ut);
		
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


		

