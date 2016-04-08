package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProfessionalDashboard;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.util.Util;

public class InitDashboard extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4023352739669480983L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Object o = null;
		Object o1 = null;
		HttpSession session = req.getSession();

		synchronized (session) {
			o = session.getAttribute("user");
		}

		if (o != null) {
			User u = (User) o;
			if (u.getUserType().equalsIgnoreCase(
					User.UserType.PROFESSIONAL.name())) {
				synchronized (session) {
					o1 = session.getAttribute("professionalProfile");
					CandidateProfile cp = (CandidateProfile) o1;
					ProfessionalDashboard pd = Util.initProfessionalDashboardBean(u,cp);
					session.setAttribute("professionalDashboard", pd);
				}
				
				resp.sendRedirect(resp.encodeRedirectURL("/bq/closed/professional/dashboard"));
				return;
				
			} else if (u.getUserType().equalsIgnoreCase(
					User.UserType.RECRUITER.name())) {

			}
		} else {

		}
	}

}
