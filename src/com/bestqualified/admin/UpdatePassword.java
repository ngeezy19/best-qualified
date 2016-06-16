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

public class UpdatePassword extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4892281895097943462L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException ,IOException {
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oldpassword = req.getParameter("oldpassword");
		String newpassword = req.getParameter("newpassword");
		String retypepass = req.getParameter("retypepass");
		
		resp.setContentType("application/json");
				
		HttpSession session = req.getSession();
		
		if(!Util.notNull(oldpassword)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter your old password"); 
				return;
				
			}
			
		}
		
		
		if(!Util.notNull(newpassword)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter your new password");
				return;
			}
			
		}
		
		if(!Util.notNull(retypepass)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please retype your new password"); 
				return;
			}
			
		}
		
		if(oldpassword.equals(newpassword) ) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please choose a different password");
				return;
			}
		}	
			
			if(!newpassword.equals(retypepass) ) {
				synchronized (session) {
					resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "New passwords do not match");
					return;
				}
			
		} else {
			
			User u = null;
			synchronized (session) {
				session.getAttribute("user");
			}
			
			u.setPassword(Util.toSHA512(newpassword));
			
			Entity e = EntityConverter.userToEntity(u);
			GeneralController.edit(e);
			
			synchronized (session) {
				session.setAttribute("user", u);
			}
			
			resp.getWriter().write(resp.encodeRedirectURL("/bq/admin/dashboard"));
		
		}
	}
		
}
