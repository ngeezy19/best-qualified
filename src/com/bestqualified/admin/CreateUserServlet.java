package com.bestqualified.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class CreateUserServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8797505551273179310L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException ,IOException {
		doPost(req, resp);
	}
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		
		
		
		resp.setContentType("application/json");
		HttpSession session = req.getSession();
		
		if(!Util.notNull(email)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter email"); 
				return;
				
			}
			
		}
		
		if(!Util.notNull(password)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter your new password");
				return;
			}
			
		}
		
		if(!Util.notNull(role)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please select role of user"); 
				return;
			}
			
		}
		
		if(!Util.isEmail(email)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter a valid email"); 
				return;
				
			}
			
		}
		
			
			User u = new User("admin", role);
			u.setEmail(email);
			u.setPassword(password);
			u.setUserType(role);
			
			Entity e = EntityConverter.userToEntity(u);
			GeneralController.create(e);
			
			synchronized (session) {
				session.setAttribute("user", u);
			}
			resp.getWriter().write(resp.encodeRedirectURL("/bq/admin/dashboard"));
			
		
	}

}
