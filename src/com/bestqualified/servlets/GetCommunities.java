package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.CommunityBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Community;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class GetCommunities extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7646226848950950559L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		List<Key> keys = GeneralController.getNCommunities(10);
		
		List<Community> comm = Util.getCommunityFromCache(keys);
		
		Map<String, String> commap = Util.getCommunityMap(comm);
		
		
		synchronized (session) {
			session.setAttribute("getCommunity", commap);
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/comm-postad"));
	}

	

}
