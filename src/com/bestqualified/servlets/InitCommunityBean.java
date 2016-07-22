package com.bestqualified.servlets;

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

import com.bestqualified.bean.CommunityBean;
import com.bestqualified.bean.InterestedJob;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.ArticleCategory;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.Job;
import com.bestqualified.entities.ReadingList;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.MemcacheProvider;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;

public class InitCommunityBean extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 878894312761874221L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();

		String webKey = req.getParameter("webkey");

		Key key = KeyFactory.stringToKey(webKey);
		Object o = MemcacheProvider.COMMUNITIES.get(key);
		Community c = null;
		if (o == null) {
			c = EntityConverter.entityToCommunity(GeneralController
					.findByKey(key));
			MemcacheProvider.COMMUNITIES.put(key, c);

		} else {
			c = (Community) o;
		}
		// EntityConverter.entityToCommunity(GeneralController.findByKey(KeyFactory.stringToKey(webKey)));
		// c.getId();

		List<Article> commPosts = GeneralController.getNArticlesByDate(5);

		for (Article at : commPosts) {

			at.setAuthor(at.getAuthor());
			at.setBody(at.getBody());
			at.setDate(at.getDate());
			at.setImageKey(at.getImageKey());
			at.setKey(at.getKey());
			at.setLikes(at.getLikes());
			at.setComments(at.getComments());
			at.setnComments(at.getnComments());
		}
		
		CommunityBean cb = new CommunityBean();
		cb.setCurrentDate(date);
		cb.setPost(Util.toArticleBeans(commPosts));
		cb.setImage(Util.getPictureUrl(c.getImage()));
		cb.setName(c.getName());
		cb.setLongDesc(c.getLongDesc().getValue());
		cb.setShortDesc(c.getShortDesc().getValue());
		cb.setMembers(c.getMembers());
		cb.setWebSafeKey(c.getId().getName());
		

		synchronized (session) {
			session.setAttribute("communityBean", cb);
		}

		resp.sendRedirect(resp.encodeRedirectURL("/bq/community"));


	}
}
