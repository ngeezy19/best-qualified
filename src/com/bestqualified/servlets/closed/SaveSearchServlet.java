package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.RecruiterDashboardBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Project;
import com.bestqualified.entities.ProjectLog;
import com.bestqualified.entities.ProjectLog.Activity;
import com.bestqualified.entities.SavedSearch;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;

public class SaveSearchServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4367824612820958988L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json");
		String name = req.getParameter("search-name");
		String project = req.getParameter("project");
		if (!Util.notNull(project)) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
					"Select a project");
			return;
		}
		if (Util.notNull(name)) {
			SavedSearch ss = new SavedSearch();
			ss.setDateCreated(new Date());
			ss.setName(name);
			HttpSession session = req.getSession();
			Object o = session.getAttribute("recruiterDashboard");
			Object o1 = session.getAttribute("employerProfile");
			if (o != null && o1 != null) {
				RecruiterDashboardBean rdb = (RecruiterDashboardBean) o;
				List<SavedSearch> l = rdb.getSavedSearch();
				if (l == null) {
					l = new ArrayList<>();
				}
				l.add(ss);
				rdb.setSavedSearch(l);
				ss.setSearchString(rdb.getSearchString());
				Key k = KeyFactory.stringToKey(project);
				Project p = EntityConverter.entityToProject(GeneralController
						.findByKey(k));
				List<Key> keys = p.getSavedSearch();
				if (keys == null) {
					keys = new ArrayList<>();
				}
				keys.add(ss.getId());
				p.setSavedSearch(keys);
				ProjectLog pl = new ProjectLog();
				pl.setActivity(Activity.SAVE_SEARH);
				pl.setDate(new Date());
				pl.setComment(new Text("Saved search for "+p.getName()));

				keys = p.getLogs();
				if(keys == null) {
					keys = new ArrayList<>();
				}
				
				keys.add(pl.getId());
				
				p.setLogs(keys);
				GeneralController.createWithCrossGroup(
						EntityConverter.projectToEntity(p),
						EntityConverter.SavedSearchToEntity(ss), EntityConverter.projectLogToEntity(pl));

			}
		} else {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST,
					"Enter a name for your search");
		}

	}

}
