package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ManageProjectBean;
import com.bestqualified.bean.ProjectBean1;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Project;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;

public class ManageProjectServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3055022361255964693L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("employerProfile");
		}

		if (o != null) {
			Recruiter r = (Recruiter) o;
			List<Key> projects = r.getProjects();
			if(projects != null) {
				Map<Key,Entity> ents = GeneralController.findByKeys(projects);
				List<Project> l1 = new ArrayList<>();
				for(Key k : projects) {
					l1.add(EntityConverter.entityToProject(ents.get(k)));
				}
				List<ProjectBean1> l2 = Util.toProjectBean1(l1); 
				ManageProjectBean mpb = Util.getManageProjectBean(l2);
				synchronized (session) {
					session.setAttribute("manageProjectBean", mpb);
				}
				resp.sendRedirect(resp.encodeRedirectURL("/bq/close/manage-project-page"));
			}
		}
	}
}
