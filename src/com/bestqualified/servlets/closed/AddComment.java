package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.text.SimpleDateFormat;
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
import com.bestqualified.bean.commentBean;
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

				Comment c = new Comment();
				c.setBody(new Text(comment));
				c.setDate(new Date());
				c.setAuthor(u.getUserKey());
				c.setParent(KeyFactory.stringToKey(webkey));

				commentBean commBean = new commentBean();
				commBean.setAuthorImg(u.getPictureUrl());
				commBean.setAuthorName(u.getFirstName() + " " + u.getLastName());
				commBean.setComment(comment);
				commBean.setTime(new SimpleDateFormat("dd MMMM yyyy")
						.format(new Date()));

				List<Article> posts = cb.getPost();
				Article ar = null;
				int index = 0;
				for (Article a : posts) {
					if (webkey.equals(a.getWebkey())) {
						ar = a;
						break;
					}
				}
				if (ar != null) {
					posts.remove(ar);
					List<commentBean> comments = ar.getComments();
					if (comments == null) {
						comments = new ArrayList<>();
					}
					comments.add(commBean);
					posts.add(ar);
					cb.setPost(posts);

					synchronized (session) {
						session.setAttribute("communityBean", cb);
					}
				}

				com.bestqualified.entities.Article article = EntityConverter
						.entityToArticle(GeneralController.findByKey(KeyFactory
								.stringToKey(webkey)));

				if (article != null) {
					List<Key> cks = article.getComments();
					if (cks == null) {
						cks = new ArrayList<>();
					}
					cks.add(c.getKey());
					article.setComments(cks);
					commBean.setTotalComment(String.valueOf(cks.size()));
					GeneralController.createWithCrossGroup(
							EntityConverter.commentToEntity(c),
							EntityConverter.ArticleToEntity(article));
				}

				resp.setContentType("application/json");

				Gson gson = new Gson();
				List<commentBean> list = new ArrayList<>();
				list.add(commBean);
				resp.getWriter().println(gson.toJson(list));
			}

		}
	}

}
