package com.bestqualified.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.CommunityBean;
import com.bestqualified.bean.CommunityPageBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.User;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;

public class GetAllCommunities extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1462159532497074850L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = req.getSession();
		Object o = null;
		User u = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}

		if(o!=null) {
			u = (User) o;
		}
		
		List<Key> cKey = GeneralController.getNCommunities(300);

		List<Community> communities = Util.getCommunityFromCache(cKey);

		List<CommunityBean> cmBean = Util.toCommunityBeans(communities, u);

		CommunityPageBean ccpb = new CommunityPageBean();
		

		ccpb.setCommunities(cmBean);

		synchronized (session) {
			session.setAttribute("communityPageBean", ccpb);
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/comm-all"));
	}
}
