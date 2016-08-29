package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProView;
import com.bestqualified.bean.ProjectBean;
import com.bestqualified.bean.RecruiterDashboardBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Company;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.Project;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;
import com.google.appengine.api.taskqueue.Queue;
import com.google.appengine.api.taskqueue.QueueFactory;
import com.google.appengine.api.taskqueue.TaskOptions;

public class CloseProject extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1294085654062246822L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String webkey = req.getParameter("id");

		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;

		synchronized (session) {
			o = session.getAttribute("employerProfile");
			o1 = session.getAttribute("recruiterDashboard");

		}

		Key key = null;
		Recruiter r = null;

		if (Util.notNull(webkey) && o != null && o1 != null) {
			r = (Recruiter) o;
			RecruiterDashboardBean rdb = (RecruiterDashboardBean) o1;
			List<ProjectBean> pro = rdb.getProjects();

			key = KeyFactory.stringToKey(webkey);
			List<Key> rKeys = r.getProjects();

			for (Key k : rKeys) {
				if (k.equals(key)) {
					rKeys.remove(k);
					break;
				}
			}

			ProjectBean pb = null;
			for (ProjectBean pbean : pro) {
				if (webkey.equals(pbean.getWebKey())) {
					pro.remove(pbean);
					pb = pbean;
					break;
				}
			}

			List<ProView> pv = pb.getApplicants();
			String emails = "";
			for (int i = 0; i < pv.size(); i++) {
				emails += (pv.get(i).getEmail());

			}
			synchronized (session) {
				session.setAttribute("recruiterDashboard", rdb);
				session.setAttribute("employerProfile", r);
			}
			
			List<Key> allkeys = new ArrayList<>();
			Project p = EntityConverter.entityToProject(GeneralController
					.findByKey(key));
			List<Key> keylist = p.getLogs();
			if(keylist!=null){
				allkeys.addAll(keylist);
			}
			
			Key jobkey = p.getJobs();
			Job j = null;
			Company coy = null;
			if (jobkey != null) {
				j = EntityConverter.entityToJob(GeneralController
						.findByKey(jobkey));
				allkeys.add(jobkey);
				Key companykey = j.getCompany();
				if (companykey != null) {
					coy = EntityConverter.entityToCompany(GeneralController
							.findByKey(companykey));
					allkeys.add(companykey);
					BlobKey logo = coy.getLogo();
					if (logo != null) {
						ImagesService img = ImagesServiceFactory
								.getImagesService();
						img.deleteServingUrl(logo);
						BlobstoreService bls = BlobstoreServiceFactory
								.getBlobstoreService();
						bls.delete(logo);
					}
				}
			}

			allkeys.add(p.getId());

			GeneralController.delete(allkeys);

			Queue queue = QueueFactory.getDefaultQueue();
			queue.add(TaskOptions.Builder.withUrl("/bq/send-bulk-email").param(
					"emails", emails));
		}

	}
}
