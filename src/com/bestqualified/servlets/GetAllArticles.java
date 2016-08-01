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

public class GetAllArticles extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1462159532497074850L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = req.getSession();

		List<Article> posts = new ArrayList<>();


		posts = Util.getPostsFromCache(GeneralController.getTrendingPosts(1000));

		CommunityPageBean artb = new CommunityPageBean();
		

		artb.setPosts(Util.toArticleBeans(posts));

		synchronized (session) {
			session.setAttribute("artPageBean", artb);
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/comm-articles"));
	}
}
