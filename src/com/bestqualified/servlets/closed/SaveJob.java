package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.InterestedJob;
import com.bestqualified.bean.JobInformation;
import com.bestqualified.bean.ProfessionalDashboard;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class SaveJob extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4411602191112547242L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String webKey = req.getParameter("web-key");
		String mode = req.getParameter("mode");
		Boolean bl = null;
		if (Util.notNull(mode)) {
			bl = new Boolean(mode);
		}
		Key key = KeyFactory.stringToKey(webKey);
		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		Object o3 = null;
		CandidateProfile cp = null;
		Object o4 = null;
		User u = null;
		JobInformation ji = null;
		ProfessionalDashboard pd = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("professionalProfile");
			o3 = session.getAttribute("professionalDashboard");
			o4 = session.getAttribute("jobInformation");
		}
		if (o1 != null) {
			cp = (CandidateProfile) o1;
		} else if (o != null) {
			u = (User) o;
			cp = EntityConverter.entityToCandidateProfile(
					GeneralController.findByKey(u.getUserInfo()),
					u.getUserKey());
		}
		List<Key> sj = cp.getSavedJobs();
		if (sj == null) {
			sj = new ArrayList<Key>();
		}
		if (o4 != null) {
			ji = (JobInformation) o4;
		}
		List<InterestedJob> savedJobs = null;
		List<InterestedJob> ij = null;
		if (o3 != null) {
			pd = (ProfessionalDashboard) o3;
		} else {
			if (u != null & cp != null) {
				pd = Util.initProfessionalDashboardBean(u, cp);
				savedJobs = pd.getSavedJobs();
				Job j = Util.getJobFromCache(key);
				List<Job> jobs = new ArrayList<>();
				jobs.add(j);
				ij = Util.toInterestedJobs(jobs);
				
			}
		}

		if (bl != null && bl) {
			if (!sj.contains(key)) {
				sj.add(key);

			}
			ji.setSaved(true);
			if (savedJobs != null && !savedJobs.containsAll(ij)) {
				savedJobs.addAll(ij);
				pd.setSavedJobs(savedJobs);
			}
			
		} else if(bl != null && !bl) {
			sj.remove(key);
			ji.setSaved(false);
			if (savedJobs != null && !savedJobs.containsAll(ij)) {
				savedJobs.addAll(ij);
				pd.setSavedJobs(savedJobs);
			}
		}
		
		cp.setSavedJobs(sj);
		GeneralController.create(EntityConverter
				.candidateProfileToEntity(cp));
		synchronized (session) {
			session.setAttribute("jobInformation", ji);
			session.setAttribute("professionalDashboard", pd);
		}

	}

}
