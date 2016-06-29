package com.bestqualified.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Company;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class InitRecruiterMajorInterest1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3710941149092711004L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String jobTitle = req.getParameter("tagline");
		String companyWebsite = req.getParameter("recruiter-website");
		String companyName = req.getParameter("recruiter-company-name");
		resp.setContentType("application/json");
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}
		if (o == null) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"Your session has expired. <a href='/sign-up'>Start again</a>");
			return;
		} else {
			User u = (User) o;
			if (!Util.notNull(jobTitle)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Tell us your Job Title");
				return;
			}
			if (!Util.notNull(companyName)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Tell us your company name");
				return;
			}
			
			Recruiter r = new Recruiter(u.getUserKey());
			Company c = new Company();
			c.setCompanyName(companyName);
			c.setCompanyWebsite(companyWebsite);
			r.setCompany(c.getId());
			u.setTagline(jobTitle);
			u.setUserInfo(r.getId());
			
			synchronized (session) {
				session.setAttribute("user", u);
				session.setAttribute("recruiter", r);
				session.setAttribute("recruiterCompany", c);
			}
			
			Entity e = EntityConverter.userToEntity(u);
			Entity e1 = EntityConverter.recruiterToEntity(r);
			Entity e3 = EntityConverter.companyToEntity(c);
			
			GeneralController.createWithCrossGroup(e,e3,e1);

		}

	}

}
