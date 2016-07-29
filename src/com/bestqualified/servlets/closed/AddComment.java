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

import com.bestqualified.bean.Article;
import com.bestqualified.bean.CommunityBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Comment;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;
import com.google.gson.Gson;

public class AddComment extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8568612681052691605L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String comment = req.getParameter("comment");
		String webkey = req.getParameter("webkey");

		if (!Util.notNull(comment, webkey)) {
			return;
		} else {
			HttpSession session = req.getSession();

			Object o = null;
			Object o1 = null;
			User u = null;
			synchronized (session) {
				o = session.getAttribute("user");
				o1 = session.getAttribute("communityBean");
			}
			if (o == null | o1 == null) {
				return;
			} else {
				u = (User) o;
				CommunityBean cb = (CommunityBean) o1;
				List<Article> posts = cb.getPost();
				Article ar = null;
				for (Article a : posts) {
					if (webkey.equals(a.getWebkey())) {
						ar = a;
						break;
					}
				}
				posts.remove(ar);

				if (ar != null) {
					Comment c = new Comment();
					c.setBody(new Text(comment));
					c.setDate(new Date());
					c.setAuthor(u.getUserKey());
					c.setParent(KeyFactory.stringToKey(ar.getWebkey()));

					ar.setnComments(ar.getnComments() + 1);
					posts.add(ar);
					cb.setPost(posts);

					com.bestqualified.entities.Article article = EntityConverter
							.entityToArticle(GeneralController
									.findByKey(KeyFactory.stringToKey(webkey)));

					List<Key> cks = article.getComments();
					if (cks == null) {
						cks = new ArrayList<>();
					}
					cks.add(c.getKey());
					article.setComments(cks);
					
					synchronized (session) {
						session.setAttribute("communityBean",cb);
					}

					GeneralController.createWithCrossGroup(
							EntityConverter.commentToEntity(c),
							EntityConverter.ArticleToEntity(article));
					
					resp.setContentType("application/json");
					Long l = ar.getnComments();
					Gson gson = new Gson();
					resp.getWriter().println(gson.toJson(l));
				}

			}

		}
	}

}
