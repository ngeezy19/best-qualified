package com.bestqualified.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.Article;
import com.bestqualified.bean.CommunityBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.KeyFactory;

public class LikeArticle extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2444017888860018125L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String webkey = req.getParameter("webkey");
		HttpSession session = req.getSession();

		Object o = null;
		CommunityBean cb = null;

		synchronized (session) {
			o = session.getAttribute("communityBean");
		}

		if (o != null && !Util.notNull(webkey)) {
			cb = (CommunityBean) o;
			List<Article> posts = cb.getPost();
			for (Article a : posts) {
				if (webkey.equals(a.getWebkey())) {
					a.setLikes(a.getLikes() + 1);
				}
			}
			cb.setPost(posts);
			synchronized (session) {
				session.setAttribute("communityBean", cb);
			}

			com.bestqualified.entities.Article art = EntityConverter
					.entityToArticle(GeneralController.findByKey(KeyFactory
							.stringToKey(webkey)));
			art.setLikes(art.getLikes()+1);
			GeneralController.create(EntityConverter.ArticleToEntity(art));
		}
	}

}
