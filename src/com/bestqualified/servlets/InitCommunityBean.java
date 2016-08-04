package com.bestqualified.servlets;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.CommunityBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.MemcacheProvider;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

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
		
		if (!Util.notNull(webKey)) {
			synchronized (session) {
				session.setAttribute("CommError",
						"no community selected");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/general-community"));
				return;

			}

		}
		
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
		

		List<Article> commPosts = GeneralController.getArticlesByCommunity(c.getId(), 10);
		
		Object o1 = null;
		synchronized (session) {
			o1 = session.getAttribute("user");
		}
		
		
		
		
		CommunityBean cb = new CommunityBean();
		cb.setCurrentDate(new Date().toString());
		cb.setPost(Util.toArticleBeans(commPosts, o1));
		cb.setImage(Util.getPictureUrl(c.getImage()));
		cb.setName(c.getName());
		cb.setLongDesc(c.getLongDesc().getValue());
		cb.setShortDesc(c.getShortDesc().getValue());
		cb.setWebSafeKey(KeyFactory.keyToString(c.getId()));
		

		synchronized (session) {
			session.setAttribute("communityBean", cb);
		}

		RequestDispatcher rd = req.getRequestDispatcher("/bq/single-comm");
		rd.include(req, resp);


	}
}
