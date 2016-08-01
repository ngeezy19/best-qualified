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
import com.bestqualified.entities.Company;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Text;

public class RecruitProfessionalServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6795283372633023242L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("recruiter");
		}

		if (o != null && o1 != null) {
			User u = (User) o;
			Recruiter r = (Recruiter) o1;

			u.setUserType(User.UserType.RECRUITER.name());
			u.setAuthenticated(true);
			User u1 = GeneralController.findSocialUser(u.getEmail());
			if (u1 != null) {
				u = Util.mergeUsers(u, u1);
				Entity e = GeneralController.findByKey(u.getUserInfo());
				Recruiter r1 = EntityConverter.entityToRecruiter(e);
				if (r1 != null) {
					r = Util.mergeRecruiters(r, r1);
				}

			}

			Entity e1 = EntityConverter.userToEntity(u);
			Entity e2 = EntityConverter.recruiterToEntity(r);
			GeneralController.createWithCrossGroup(e1, e2);
			synchronized (session) {
				session.setAttribute("employerProfile", r);
			}

			RequestDispatcher rd = req
					.getRequestDispatcher("/end-point/add-major-interest");
			rd.forward(req, resp);

		} else {
			resp.sendRedirect(resp.encodeRedirectURL("/sign-in"));
		}

	}
}
