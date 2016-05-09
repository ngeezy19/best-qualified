package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProfessionalDashboard;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class ProcessRating extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2894709901946629235L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String response = req.getParameter("response");
		if(Util.notNull(response)) {
			Boolean b = new Boolean(response);
			HttpSession session = req.getSession();
			Object o = null;
			Object o1 = null;
			Object o2 = null;
			Object o3 = null;
			synchronized (session) {
				o = session.getAttribute("user");
				o1 = session.getAttribute("rating");
				o2 = session.getAttribute("ass-level");
				o3 = session.getAttribute("professionalDashboard");
			}
			
			if(o != null && o1 !=null && o2 != null && o3 !=null) {
				
				User u = (User) o;
				Double rating = (Double) o1;
				String level = (String) o2;
				ProfessionalDashboard pd = (ProfessionalDashboard) o3;
				
				if(b) {
					u.setRating(rating);
					u.setProfessionalLevel(level);
					pd.setRating(rating);
					pd.setProfileLevel(level);
				} else {
					u.setRating(rating);
				}
				synchronized (session) {
					session.setAttribute("user", u);
					session.setAttribute("professionalDashboard", pd);
				}
				Entity e = EntityConverter.userToEntity(u);
				GeneralController.edit(e);
				resp.getWriter().write("/bq/closed/init-dashboard");
			}
			
		}
	}

}
