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

import com.bestqualified.bean.CommunityPageBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.ReadingList;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class CommunityPageServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1462159532497074850L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = req.getSession();

		Community c = null;

		List<Community> communities = GeneralController.getNCommunities(10);
		List<Key> cKey = new ArrayList<>();

		for (Community comm : communities) {
			cKey.add(comm.getId());
		}

		communities = Util.getCommunityFromCache(cKey);

		Map<String, String> map = new HashMap<>();
		for (Community co : communities) {
			map.put(KeyFactory.keyToString(c.getId()), c.getName());

		}

	
		List<Article> posts = GeneralController.getTrendingPosts(10);
		List<Key> aKey = new ArrayList<>();
		
		for (Article article : posts) {
			aKey.add(article.getKey());
		}
		
		posts = Util.getPostsFromCache(aKey);
		
		CommunityPageBean cpb = new CommunityPageBean();
		cpb.setCommunities(map);

		cpb.setPosts(Util.toArticleBeans(posts));
		
		synchronized (session) {
			session.setAttribute("communityPageBean", cpb);
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/community"));
	}
}
