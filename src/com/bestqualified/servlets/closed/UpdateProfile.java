package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProfessionalProfileBean;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.entities.WorkExperience;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Text;
import com.google.gson.Gson;

public class UpdateProfile extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3858441685518746821L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String param = req.getParameter("param");
		String value = req.getParameter("value");
		HttpSession session = req.getSession();
		if(param.equals("work-experience")) {
			req.getRequestDispatcher("/bq/close/save-work-experience").forward(req, resp);
			Object o = null;
			synchronized (session) {
				o = session.getAttribute("workExperience");
			}
			resp.setContentType("application/json");
			WorkExperience wk = (WorkExperience) o;
			resp.getWriter().write("steve");
		}else {
			
			Object o = null;
			User u = null;
			synchronized (session) {
				o = session.getAttribute("user");
			}
			if(o!=null) {
				u = (User) o;
				CandidateProfile cp = null;
				ProfessionalProfileBean ppb = null;
				if(u.getUserType().equalsIgnoreCase(User.UserType.PROFESSIONAL.name())) {
					synchronized (session) {
						Object c = session.getAttribute("professionalProfile");
						Object a = session.getAttribute("uppb");
						if(c!=null && a!=null) {
							cp = (CandidateProfile) c;
							ppb = (ProfessionalProfileBean) a;
						}
					}
					
				}
				if(param != null && Util.notNull(value)) {
					if(param.equalsIgnoreCase("tagline")) {
						u.setTagline(value);
					}  else if(param.equalsIgnoreCase("phone")) {
						u.setPhone(value);
					} else if(param.equalsIgnoreCase("current-state")) {
						cp.setCurrentState(value);
						ppb.setCurrentState(value);
						resp.setContentType("application/json");
						resp.getWriter().write(new Gson().toJson(ppb.getCurrentState()));
					}else if(param.equalsIgnoreCase("current-country")) {
						cp.setCurrentCountry(value);
						ppb.setCurrentCountry(value);
					}else if(param.equalsIgnoreCase("nationality")) {
						cp.setNationality(value);
						ppb.setNationality(value);
					}else if(param.equalsIgnoreCase("state-of-origin")) {
						cp.setStateOfOrigin(value);
						ppb.setStateOfOrigin(value);
						resp.setContentType("application/json");
						resp.getWriter().write(new Gson().toJson(ppb.getStateOfOrigin()));
					}else if(param.equalsIgnoreCase("gender")) {
						u.setGender(value);
						ppb.setGender(value);
						resp.setContentType("application/json");
						resp.getWriter().write(new Gson().toJson(ppb.getGender()));
					}else if(param.equalsIgnoreCase("experience")) {
						cp.setYearsOfExperience(Util.getExperienceValue(value));
						ppb.setYearOfExperience(Util.getExperienceValue(value));
						resp.setContentType("application/json");
						resp.getWriter().write(new Gson().toJson(ppb.getYearOfExperience()));
					}else if(param.equalsIgnoreCase("career-level")) {
						cp.setCareerLevel(Util.getCareerLevelValue(value));
						ppb.setCareerLevel(Util.getCareerLevelValue(value));
						resp.setContentType("application/json");
						resp.getWriter().write(new Gson().toJson(ppb.getCareerLevel()));
					}else if(param.equalsIgnoreCase("last-name")) {
						String fName = req.getParameter("first-name");
						String lName = req.getParameter("last-name");
						if(Util.notNull(fName)) {
							u.setFirstName(fName);
						}
						
						if(Util.notNull(lName)) {
							u.setLastName(lName);
						}
					} else if(param.equalsIgnoreCase("current-employer") && cp != null) {
						cp.setCurrentEmployer(value);
					} else if(param.equalsIgnoreCase("profile-summary") && value != null) {
						cp.setProfileDescription(new Text(value));
						ppb.setProfileSummary(value);
					}
				}
			}
		}
		
		
	}

}
