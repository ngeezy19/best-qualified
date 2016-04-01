package com.bestqualified.admin;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Company;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Email;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;
import com.google.appengine.api.datastore.Transaction;
import com.google.appengine.api.datastore.TransactionOptions;

public class NewJob extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String companyName = req.getParameter("company-name");
		String websiteName = req.getParameter("website");
		String location = req.getParameter("location");
		String companyLinkedIN = req.getParameter("company-linkedin");
		String companyGooglePlus = req.getParameter("company-google-plus");
		String companyFacebook = req.getParameter("company-facebook");
		String companyTwitter = req.getParameter("company-twitter");
		String companyTagline = req.getParameter("company-tagline");
		String companyDescription = req.getParameter("company-description");
		String jobExperience = req.getParameter("job-experience");
		String extraInformation = req.getParameter("extra-info");
		String jobType = req.getParameter("job-type");
		String closingDate = req.getParameter("close-date");
		String allowLinkedIn = req.getParameter("allow-linkedIn");
		String allowFacebook = req.getParameter("allow-facebook");
		String educationLevel = req.getParameter("educational-level");
		String salary = req.getParameter("salary");
		String applicationUrl = req.getParameter("application-email-url");
		String careerLevel = req.getParameter("career-level");
		String jobRegion = req.getParameter("job-region");
		String jobDescription = req.getParameter("job-description");
		String jobTitle = req.getParameter("job-title");
		String[] jobCategory = req.getParameterValues("job-category");

		HttpSession session = req.getSession();
		if (companyName == null || companyName.isEmpty()) {
			synchronized (session) {
				session.setAttribute("newJobError",
						"You have to fill the company name.");
				session.removeAttribute("newJobSaved");
			}
			resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/new-job"));
			return;
		} else {

			if (Util.notNull(jobTitle)) {

				if (Util.notNull(jobDescription)) {

					Company c = new Company();
					c.setCompanyName(companyName);
					c.setCompanyWebsite(websiteName);
					c.setDescription(companyDescription);
					c.setFacebook(companyFacebook);
					c.setGooglePlus(companyGooglePlus);
					c.setLinkedIn(companyLinkedIN);
					c.setTagline(companyTagline);
					c.setTwitter(companyTwitter);
					c.setDescription(companyDescription);

					Recruiter r = new Recruiter();
					
					r.setCvs(new HashSet<BlobKey>());
					List<Key> cKeys = new ArrayList<>();
					cKeys.add(c.getId());
					r.setCompany(cKeys);
					r.setProfile(new HashSet<Key>());
					r.setSearchResult(new HashSet<Key>());
					List<Key> keys = new ArrayList<>();
					keys.add(r.getId());
					c.setRecruiter(keys);

					Job job = new Job();
					job.setAllowFacebookApplication(Util.notNull(allowFacebook) ? true
							: false);
					job.setAllowLinkedInApplication(Util.notNull(allowLinkedIn) ? true
							: false);
					job.setCareerLevel(careerLevel);
					job.setCustomAttributes(new Text(extraInformation));
					job.setDatePosted(new Date());
					job.setDescription(jobDescription);
					job.setEducationLevel(educationLevel);
					job.setJobCategory(Arrays.asList(jobCategory));
					job.setJobTitle(jobTitle);
					job.setJobType(jobType);
					job.setLocation(jobRegion);
					job.setLocation(location);
					job.setSalaryRange(salary);
					job.setExperience(jobExperience);
					job.setApplicationUrl(applicationUrl);
					job.setEmployer(r.getId());
					SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
					if(Util.notNull(closingDate)) {
						try {
							Date date = formatter.parse(closingDate);
							job.setClosingDate(date);

						} catch (ParseException e) {
							synchronized (session) {
								session.setAttribute("newJobError",
										"Date Format Error");
								session.removeAttribute("newJobSaved");
							}
							resp.sendRedirect(resp
									.encodeRedirectURL("/bq/admin/new-job"));
							return;
						}
					} 

					List<Key> jKeys = new ArrayList<>();
					jKeys.add(job.getId());
					r.setJobs(jKeys);
					
				
					Entity e = EntityConverter.companyToEntity(c);
					Entity e1 = EntityConverter.jobToEntity(job);
					Entity e2 = EntityConverter.recruiterToEntity(r);

					Transaction txn = GeneralController.ds
							.beginTransaction(TransactionOptions.Builder
									.withXG(true));
					List<Entity> ents = new ArrayList<>();
					ents.add(e2);
					ents.add(e1);
					ents.add(e);
					GeneralController.ds.put(ents);
					txn.commitAsync();

					synchronized (session) {
						session.setAttribute("newJobSaved", "You the job "
								+ job.getJobTitle()
								+ " has been saved successfully.");
						session.removeAttribute("newJobError");
					}
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/admin/new-job"));
					return;

				} else {
					synchronized (session) {
						session.setAttribute("newJobError",
								"You have to fill the Job description.");
						session.removeAttribute("newJobSaved");
					}
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/admin/new-job"));
					return;
				}

			} else {
				synchronized (session) {
					session.setAttribute("newJobError",
							"You have to fill the Job Title.");
					session.removeAttribute("newJobSaved");
				}
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/new-job"));
				return;
			}

		}

	}
}
