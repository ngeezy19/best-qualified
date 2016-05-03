package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProView;
import com.bestqualified.bean.ProjectBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Company;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.Project;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class SaveProject extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7589217221750956647L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String projectName = req.getParameter("project-name");
		String projectDescription = req.getParameter("project-description");
		String jobTitle = req.getParameter("job-title");
		String applicationDeadline = req.getParameter("closing-date");
		String educationLevel = req.getParameter("education-level");
		String experience = req.getParameter("job-experience");
		String careerLevel = req.getParameter("career-level");
		String jobType = req.getParameter("job-type");
		String applicationUrl = req.getParameter("application-url");
		String specialization = req.getParameter("job-category");
		String salary = req.getParameter("salary");
		String allowLinkedIn = req.getParameter("allow-LinkedIn");
		String extraInfo = req.getParameter("extra-info");
		String companyName = req.getParameter("company-name");
		String companyWebsite = req.getParameter("company-website");
		String companyLocation = req.getParameter("company-location");
		String companyTagline = req.getParameter("company-tagline");
		String companyFacebook = req.getParameter("company-facebook");
		String companyLinkedIn = req.getParameter("company-linkedin");
		String companyGoogle = req.getParameter("company-google");
		String companyTwitter = req.getParameter("company-twitter");
		String companyDescription = req.getParameter("company-description");

		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		User u = null;
		Recruiter r = null;
		Entity e1 = null;
		Entity e2 = null;
		Entity e3 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("employerProfile");
		}
		if (o != null && o1 != null) {
			u = (User) o;
			r = (Recruiter) o1;
			
		} else {
			return;
		}

		if (Util.notNull(projectName)) {
			Project p = new Project();
			p.setDateCreated(new Date());
			p.setName(projectName);
			Job job = null;
			Company c = null;
			if (Util.notNull(projectDescription)) {
				p.setDescription(new Text(projectDescription));
			}

			if (Util.notNull(educationLevel, experience, careerLevel, jobType,
					specialization, salary, allowLinkedIn)) {
				if (!Util.notNull(jobTitle)) {
					resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
							"You have to give the job post a title.");
					return;
				}

				if (!Util.notNull(applicationDeadline)) {
					resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
							"You have to set an application deadline.");
					return;
				}

				if (!Util.notNull(applicationUrl)) {
					resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
							"You have to specify your application URL or webpage.");
					return;
				}

				if (!Util.notNull(extraInfo)) {
					resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
							"You have to enter a Job Description.");
					return;
				}
			}

			if (Util.notNull(companyWebsite, companyLocation, companyTagline,
					companyFacebook, companyGoogle, companyLinkedIn,
					 companyTwitter)) {
				if (!Util.notNull(companyName)) {
					resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
							"You have to name your company.");
					return;
				}
				if (!Util.notNull(companyDescription)) {
					resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
							"You have to describe your company.");
					return;
				}
			}
			
			if(Util.notNull(companyName) && Util.notNull(companyDescription)) {
				c = new Company();
				c.setCompanyName(companyName);
				c.setCompanyWebsite(companyWebsite);
				c.setDescription(new Text(companyDescription));
				c.setFacebook(companyFacebook);
				c.setGooglePlus(companyGoogle);
				c.setLinkedIn(companyLinkedIn);
				c.setLocation(companyLocation);
				List<Key> keys = new ArrayList<>();
				keys.add(u.getUserKey());
				c.setRecruiter(keys);
				c.setTagline(companyTagline);
				c.setTwitter(companyTwitter);
				
				/*BlobstoreService bss = BlobstoreServiceFactory.getBlobstoreService();
				Map<String, List<BlobKey>> map = bss.getUploads(req);
				List<BlobKey> ks = map.get("company-logo");
				BlobKey key = null;
				if (ks != null && !ks.isEmpty()) {
					key = ks.get(0);
					c.setLogo(key);
				}*/
				
				e3 = EntityConverter.companyToEntity(c);

			}

			if (Util.notNull(jobTitle) && Util.notNull(applicationDeadline)
					&& Util.notNull(applicationUrl) && Util.notNull(extraInfo)) {

				job = new Job();
				if (Util.notNull(allowLinkedIn)) {
					job.setAllowLinkedInApplication(new Boolean(allowLinkedIn));
				}
				if(c != null) {
					job.setCompany(c.getId());
				}
				job.setJobTitle(jobTitle);
				job.setApplicationUrl(applicationUrl);
				job.setCareerLevel(careerLevel);
				job.setDatePosted(p.getDateCreated());
				job.setDescription(new Text(extraInfo));
				job.setEducationLevel(educationLevel);
				job.setExperience(experience);
				job.setEmployer(u.getUserInfo());
				job.setJobType(jobType);
				job.setJobCategory(specialization);
				job.setSalaryRange(salary);
				SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
				try {
					Date date = formatter.parse(applicationDeadline);
					job.setClosingDate(date);

				} catch (ParseException e) {
					/*synchronized (session) {
						session.setAttribute("newJobError", "Date Format Error");
						session.removeAttribute("newJobSaved");
					}
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/admin/new-job"));
					return;*/
				}
				p.setJobs(job.getId());
				e2  = EntityConverter.jobToEntity(job);

			}
			
			List<Key> projects = r.getProjects();
			if(projects == null) {
				projects = new ArrayList<>();
			}
			projects.add(p.getId());
			r.setProjects(projects);
			Entity e4 = EntityConverter.recruiterToEntity(r);
			e1 = EntityConverter.projectToEntity(p);
			List<Entity> es = new ArrayList<>();
			es.add(e4);
			if(e2!=null) {
				es.add(e2);
			}
			if(e3!=null) {
				es.add(e3);
			}
			es.add(e1);
			Entity[] ents = es.toArray(new Entity[es.size()]);
			
			GeneralController.createWithCrossGroup(ents);
			ProjectBean pb = new ProjectBean();
			pb.setDateCreated(new SimpleDateFormat("dd-MMM-YYYY").format(p.getDateCreated()));
			pb.setDescription(p.getDescription().getValue());
			pb.setJob(job);
			pb.setName(p.getName());
			pb.setProfiles(new ArrayList<ProView>());
			pb.setSafeKey(p.getSafeKey());
			pb.setSavedSearch(new ArrayList<ProView>());
			synchronized (session) {
				session.setAttribute("projectBean", pb);
			}
			resp.sendRedirect(resp.encodeRedirectURL("/bq/close/project"));
			return;
		} else {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
					"You have to name your project.");
		}
	}

}
