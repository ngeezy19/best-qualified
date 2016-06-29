package com.bestqualified.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.Project;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Text;

public class InitRecruiterMajorInterest3 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2179946579193216585L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String jobTitle = req.getParameter("job-title");
		String jobLocation = req.getParameter("job-location");
		String applicationUrl = req.getParameter("application-url");
		String applicationDeadline = req
				.getParameter("application-deadline");
		String jobRoles = req.getParameter("job-role");
		String jobDescription = req.getParameter("job-description");
		String careerLevel = req.getParameter("career-level");
		String educationLevel = req.getParameter("education-level");
		String jobType = req.getParameter("job-type");
		String salaryRange = req.getParameter("salary");
		String experience = req.getParameter("experience");
		String allowLinkedIn = req.getParameter("allow-linkedin");
		String skills = req.getParameter("skills");
		String extraInformation = req.getParameter("extra-info");
		
		resp.setContentType("application/json");
		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		Object o2 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("project");
			o2 = session.getAttribute("recruiter");
		}
		if (o == null | o2 == null | o1 == null) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"Your session has expired. <a href='/sign-up'>Start again</a>");
			return;
		} else {
			Project p = (Project) o1;
			Recruiter r = (Recruiter) o2;
			if (!Util.notNull(jobTitle)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Enter a title for the Job Post");
				return;
			}
			if (!Util.notNull(jobLocation)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Select the location for the job.");
				return;
			}
			if (!Util.notNull(applicationUrl)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Enter your application URL");
				return;
			}
			if (!Util.notNull(applicationDeadline)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Set a deadline for the job post.Don't worry, you can extend it later.");
				return;
			}
			if (!Util.notNull(jobRoles)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Enter the job roles");
				return;
			}
			if (!Util.notNull(jobDescription)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Enter a Job Description");
				return;
			}
			if (!Util.notNull(careerLevel)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Select a career level");
				return;
			}
			if (!Util.notNull(educationLevel)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Select an education level.");
				return;
			}
			if (!Util.notNull(jobType)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Select a job type.");
				return;
			}
			
			Job j = new Job();
			j.setJobTitle(jobTitle);
			j.setLocation(jobLocation);
			j.setApplicationUrl(applicationUrl);
			try {
				j.setClosingDate(new SimpleDateFormat("MM/dd/yyyy").parse(applicationDeadline));
			} catch (ParseException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			j.setJobRoles(new Text(jobRoles));
			j.setDescription(new Text(jobDescription));
			j.setCareerLevel(careerLevel);
			j.setEducationLevel(educationLevel);
			j.setJobType(jobType);
			j.setSalaryRange(salaryRange);
			j.setExperience(experience);
			if(allowLinkedIn!=null) {
				j.setAllowLinkedInApplication(true);
			}
			if(Util.notNull(skills)) {
				j.setSkills(Arrays.asList(skills.split(",")));
			}
			j.setCustomAttributes(new Text(extraInformation));
			j.setEmployer(r.getId());
			p.setJobs(j.getId());
			j.setDatePosted(new Date());
			synchronized (session) {
				session.setAttribute("job", j);
				session.setAttribute("project", p);
			}
			
			Entity e = EntityConverter.jobToEntity(j);
			Entity e1 = EntityConverter.projectToEntity(p);
			
			GeneralController.createWithCrossGroup(e,e1);
			
		}
	}

}
