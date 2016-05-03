package com.bestqualified.listeners;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;

public class BestQualifiedSessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		HttpSession session = arg0.getSession();
		Object o1 = session.getAttribute("user");
		if (o1 != null) {
			User u = (User) o1;
			if (u.getUserType().equalsIgnoreCase(
					User.UserType.PROFESSIONAL.name())) {
				Object o2 = session.getAttribute("professionalProfile");
				if(o2 != null) {
					CandidateProfile cp = (CandidateProfile) o2;
					GeneralController.create(EntityConverter.candidateProfileToEntity(cp));
				}
				GeneralController.create(EntityConverter.userToEntity(u));
				
			} else if (u.getUserType().equalsIgnoreCase(
					User.UserType.RECRUITER.name())) {

			}
		}

	}

}
