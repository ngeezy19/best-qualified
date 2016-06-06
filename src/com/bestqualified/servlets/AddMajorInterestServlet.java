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
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class AddMajorInterestServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2054099378365196693L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		if (session.isNew()) {
			synchronized (session) {
				session.setAttribute("majorInterestError",
						"A fatal error has occured, <a href='/login'>try again</a>");
				resp.sendRedirect(resp.encodeRedirectURL("/major-interest"));
			}
		} else {
			String userType = req.getParameter("user-type");
			if (Util.notNull(userType)) {
				Object o = null;
				synchronized (session) {
					o = session.getAttribute("user");
				}
				if (o != null) {
					User u = (User) o;
					u.setUserType(userType.toUpperCase());
					u.setAuthenticated(true);
					User u1 = GeneralController.findSocialUser(u.getEmail());
					
					if (u1 != null) {
						u = Util.mergeUsers(u, u1);
						
						Entity e = GeneralController.findByKey(u.getUserInfo());
						if (userType
								.equalsIgnoreCase(User.UserType.PROFESSIONAL
										.name())) {
								CandidateProfile cp = EntityConverter.entityToCandidateProfile(e, u.getUserKey());
								synchronized (session) {
									session.setAttribute("professionalProfile", cp);
								}
						} else if (userType
								.equalsIgnoreCase(User.UserType.RECRUITER
										.name())) {
							Recruiter r = EntityConverter.entityToRecruiter(e);
							synchronized (session) {
								session.setAttribute("employerProfile", r);
							}
						}
						Entity e1 = EntityConverter.userToEntity(u);
						GeneralController.create(e1);
					} else {
						if (userType
								.equalsIgnoreCase(User.UserType.PROFESSIONAL
										.name())) {
							CandidateProfile cp = new CandidateProfile(
									u.getUserKey());
							u.setUserInfo(cp.getId());
							Entity e = EntityConverter
									.candidateProfileToEntity(cp);
							Entity e1 = EntityConverter.userToEntity(u);
							GeneralController.createWithCrossGroup(e1, e);
							synchronized (session) {
								session.setAttribute("professionalProfile", cp);
							}
						} else if (userType
								.equalsIgnoreCase(User.UserType.RECRUITER
										.name())) {
							Recruiter r = new Recruiter(u.getUserKey());
							u.setUserInfo(r.getId());
							Entity e = EntityConverter.recruiterToEntity(r);
							Entity e1 = EntityConverter.userToEntity(u);
							GeneralController.createWithCrossGroup(e1, e);
							synchronized (session) {
								session.setAttribute("employerProfile", r);
							}
							
						}
					}
					synchronized (session) {
						session.setAttribute("user", u);
						session.removeAttribute("majorInterestError");
					}
					
					Object o3 = null;
					Object o4 = null;
					synchronized (session) {
						o3 = session.getAttribute("jobApplicationSignUp");
						if(o3 != null) {
							o4 = session.getAttribute("jobKey");
						}
						session.removeAttribute("jobApplicationSignUp");
						session.removeAttribute("jobKey");
					}
					if(o4 != null) {
						String jobWebKey = (String) o4;
						resp.sendRedirect(resp.encodeRedirectURL("/bq/open/job?job-key="+jobWebKey));
						return;
					}else if(session.getAttribute("requestUri") != null) {
						String uri = (String) session.getAttribute("requestUri");
						String query = (String) session.getAttribute("requestUri");
						uri = uri+"?"+query;
						resp.sendRedirect(resp.encodeRedirectURL(uri));
						return;
					}else {
						RequestDispatcher rd = req.getRequestDispatcher("/bq/closed/init-dashboard");
						rd.forward(req, resp);
						return;
					}
					

				} else {
					synchronized (session) {
						session.setAttribute("majorInterestError",
								"A fatal error has occured, <a href='/login'>try again</a>");
						resp.sendRedirect(resp
								.encodeRedirectURL("/major-interest"));
						return;
					}
				}
			} else {
				session.setAttribute("majorInterestError",
						"You have to select your major interest.");
				resp.sendRedirect(resp.encodeRedirectURL("/major-interest"));
				return;
			}
		}
	}

}
