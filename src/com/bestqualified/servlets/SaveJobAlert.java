package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProfessionalDashboard;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.JobAlert;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;

public class SaveJobAlert extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5040176177079074054L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email = req.getParameter("email");
		String careerLevel = req.getParameter("career-level");
		String jobType = req.getParameter("job-type");
		String salary = req.getParameter("salary");
		String location = req.getParameter("job-region");
		resp.setContentType("application/json");
		if(!Util.notNull(email)) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "You have to enter your email");
			return;
		}else if(!Util.isEmail(email)) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, email+" is not a valid email address.");
			return;
		}
		JobAlert jobAlert = new JobAlert();
		jobAlert.setCareerLevel(careerLevel);
		jobAlert.setEmail(email);
		jobAlert.setJobType(jobType);
		jobAlert.setLocation(location);
		jobAlert.setSalary(salary);
		
		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		Object oo = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("professionalProfile");
			oo  =session.getAttribute("professionalDashboard");
		}
		Entity e1 = EntityConverter.JobAlertToEntity(jobAlert);
		if(o != null) {
			User u = (User) o;
			CandidateProfile cp = null;
			if(o1 == null) {
				cp = EntityConverter.entityToCandidateProfile(GeneralController.findByKey(u.getUserInfo()), u.getUserKey());
			}else {
				cp = (CandidateProfile) o1;
			}
			
			List<Key> keys = cp.getJobAlerts();
			if(keys==null) {
				keys = new ArrayList<>();
			}
			keys.add(jobAlert.getId());
			cp.setJobAlerts(keys);
			ProfessionalDashboard pd = null;
			if(oo == null) {
				pd=Util.initProfessionalDashboardBean(u, cp);
			}else{
				pd = (ProfessionalDashboard) oo;
			}
			List<JobAlert> jas = pd.getJobAlerts();
			if(jas == null) {
				jas = new ArrayList<>();
			}
			jas.add(jobAlert);
			pd.setJobAlerts(jas);
			synchronized (session) {
				session.setAttribute("professionalProfile", cp);
				session.setAttribute("professionalDashbord", pd);
			}
			
			Entity e = EntityConverter.candidateProfileToEntity(cp);
			GeneralController.createWithCrossGroup(e,e1);
			
		}else {
			GeneralController.create(e1);
		}
		
	}

}
