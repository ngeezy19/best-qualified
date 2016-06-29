package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Project;
import com.bestqualified.entities.ProjectLog;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class InitRecruiterMajorInterest2 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -289061945353953121L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String projectName = req.getParameter("project-name");
		String desc = req.getParameter("project-description");
		resp.setContentType("application/json");
		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("recruiter");
		}
		if (o == null | o1 == null) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"Your session has expired. <a href='/sign-up'>Start again</a>");
			return;
		} else {
			Recruiter r = (Recruiter) o1;
			if (!Util.notNull(projectName)) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
						"Give your project a name");
				return;
			}
			
			Project p = new Project();
			p.setName(projectName);
			if(Util.notNull(desc)){
				p.setDescription(new Text(desc));
			}
			
			ProjectLog pl = new ProjectLog();
			pl.setDate(p.getDateCreated());
			pl.setActivity(ProjectLog.Activity.CREATE);
			
			List<Key> kys = new ArrayList<>();
			kys.add(pl.getId());
			p.setLogs(kys);
			
			List<Key> ks = new ArrayList<>();
			ks.add(p.getId());
			
			r.setProjects(ks);
			
			synchronized (session) {
				session.setAttribute("recruiter", r);
				session.setAttribute("project", p);
			}
			
			Entity e = EntityConverter.recruiterToEntity(r);
			Entity e1 = EntityConverter.projectToEntity(p);
			Entity e2 = EntityConverter.projectLogToEntity(pl);
			
			GeneralController.createWithCrossGroup(e,e1);
		}
	}

}
