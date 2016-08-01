package com.bestqualified.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class DefaultUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3752298837323956397L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String jobTitle = req.getParameter("job-title");
		String organization = req.getParameter("organisation");
		HttpSession session = req.getSession();
		if (!Util.notNull(jobTitle)) {
			session.setAttribute("", "Enter your job title.");
		}

		if (!Util.notNull(organization)) {
			session.setAttribute("", "organization.");
		}

		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}
		if (o != null) {
			User u = (User) o;
			CandidateProfile cp = null;
			u.setUserType(User.UserType.PROFESSIONAL.name());
			u.setAuthenticated(true);
			User u1 = GeneralController.findSocialUser(u.getEmail());
			if (u1 != null) {
				u = Util.mergeUsers(u, u1);
				Entity e = GeneralController.findByKey(u1.getUserInfo());
				cp = EntityConverter.entityToCandidateProfile(e, u.getUserKey());
				
			}
			
			if(cp == null) {
				cp = new CandidateProfile(u.getUserKey());
			}
			cp.setCurrentEmployer(organization);
			u.setTagline(jobTitle);
			u.setUserInfo(cp.getId());
			Entity e = EntityConverter.candidateProfileToEntity(cp);
			Entity e1 = EntityConverter.userToEntity(u);
			GeneralController.createWithCrossGroup(e1, e);
			synchronized (session) {
				session.setAttribute("professionalProfile", cp);
			}
			Util.addToSearchIndex(u, cp);
			RequestDispatcher rd = req
					.getRequestDispatcher("/end-point/add-major-interest");
			rd.forward(req, resp);
		} else {
			resp.sendRedirect(resp.encodeRedirectURL("/sign-in"));
		}
	}

}
