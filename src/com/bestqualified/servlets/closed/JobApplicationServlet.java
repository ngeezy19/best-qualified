package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.MemcacheProvider;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class JobApplicationServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1298221095466832976L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		User u = null;
		CandidateProfile cp = null;
		HttpSession session = req.getSession();
		String webSafeKey = req.getParameter("job-key");
		Key key = KeyFactory.stringToKey(webSafeKey);
		
		Job job = Util.getJobFromCache(key);
		String url = job.getApplicationUrl();
		synchronized (session) {
			cp = (CandidateProfile) session.getAttribute("professionalProfile");
			u = (User) session.getAttribute("user");
		}

		Set<Key> kys = cp.getJobsApplied();
		if (kys == null) {
			kys = new HashSet<>();
		}
		kys.add(job.getId());
		cp.setJobsApplied(kys);

		List<Key> ks = job.getNewApplicants();
		if (ks == null) {
			ks = new ArrayList<>();
		}
		if(!ks.contains(u.getUserKey())) {
			ks.add(u.getUserKey());
		}
		
		job.setNewApplicants(ks);
		if (url.contains("@")) {
			synchronized (session) {
				session.setAttribute("cvSent", true);
				session.removeAttribute("noCV");
				session.removeAttribute("jobKey");
			}

			Util.sendApplicationEmails(u, cp, job, url, req);
			GeneralController.createWithCrossGroup(
					EntityConverter.candidateProfileToEntity(cp),
					EntityConverter.jobToEntity(job));
			resp.sendRedirect(resp
					.encodeRedirectURL("/bq/open/job-information"));
			return;
		} else {
			synchronized (session) {
				session.removeAttribute("jobKey");
			}
			if (url.contains("http://")) {
				resp.sendRedirect(url);
			} else {
				resp.sendRedirect("http://" + url);
			}
			
			

			return;
		}
	}

}
