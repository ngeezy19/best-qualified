package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.MyJobs;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.User;
import com.bestqualified.util.Util;

public class InitJobs extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 713886075916782669L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		HttpSession session = req.getSession();
		Object o = null;
		Object o1 = null;
		Object o2 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("professionalProfile");
			o2 = session.getAttribute("myJobs");
		}

		if (o != null && o1 != null) {
			User u = (User) o;
			CandidateProfile cp = (CandidateProfile) o1;
			MyJobs mjs = null;
			if (o2 != null) {
				mjs = (MyJobs) o2;
			}
		
			Map<String, Object> map = GeneralController.findAllWithCursor(
					Job.class.getSimpleName(), 10, (mjs == null)? null:mjs.getJobsCursor());
			mjs = (mjs==null)?Util.getMyJobs(map, cp):Util.updateMyJobs(mjs,map,cp);
			
			synchronized (session) {
				session.setAttribute("myJobs", mjs);
			}
			resp.sendRedirect(resp.encodeRedirectURL("/bq/close/jobs"));
		}

	}

}
