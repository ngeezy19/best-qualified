package com.bestqualified.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class JobSeeker extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7487199513614554756L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
		Map<String, List<BlobKey>> blobFields = blobstoreService
				.getUploads(req);
		List<BlobKey> blobKeys = blobFields.get("cv");
		BlobKey blobKey = null;
		if (blobKeys != null && !blobKeys.isEmpty()) {
			// We're only expecting one, so take the first one.
			blobKey = blobKeys.get(0);
		}
		
		String mobileNumber = req.getParameter("mobile-number");
		String gender = req.getParameter("gender");
		String educationLevel = req.getParameter("educational-level");
		String location = req.getParameter("location");
		String experience = req.getParameter("experience");
		String dob = req.getParameter("dob");
		String careerLevel = req.getParameter("career-level");
		String jobType = req.getParameter("job-type");
		String salary = req.getParameter("salary");
	
		
		Object o = null;
		HttpSession session = req.getSession();
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
			
			u.setPhone(mobileNumber);
			u.setGender(gender.toUpperCase());
			cp.setCurrentState(location);
			cp.setCv(blobKey);
			cp.setCareerLevel(careerLevel);
			cp.setHighestEducationLevel(educationLevel);
			cp.setYearsOfExperience(experience);
			u.setUserInfo(cp.getId());
			Entity e = EntityConverter.candidateProfileToEntity(cp);
			Entity e1 = EntityConverter.userToEntity(u);
			GeneralController.createWithCrossGroup(e1, e);
			synchronized (session) {
				session.setAttribute("professionalProfile", cp);
			}

			RequestDispatcher rd = req
					.getRequestDispatcher("/end-point/add-major-interest");
			rd.forward(req, resp);
		} else {
			resp.sendRedirect(resp.encodeRedirectURL("/sign-in"));
		}
		
	}

}
