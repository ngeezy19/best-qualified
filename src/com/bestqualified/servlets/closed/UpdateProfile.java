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
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Text;

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
				} else if(param.equalsIgnoreCase("email")) {
					u.setEmail(value);
				} else if(param.equalsIgnoreCase("phone")) {
					u.setPhone(value);
				} else if(param.equalsIgnoreCase("last-name")) {
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
