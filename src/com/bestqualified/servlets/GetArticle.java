package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class GetArticle extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7543851707549076958L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String webkey = req.getParameter("webkey");
		if(Util.notNull(webkey)) {
			Key key = KeyFactory.stringToKey(webkey);
			Article art  = EntityConverter.entityToArticle(GeneralController.findByKey(key));
			List<Article> l = new ArrayList<>();
			l.add(art);
			Object o = null;
			HttpSession session = req.getSession();
			synchronized (session) {
				o = session.getAttribute("user");
			}
			List<com.bestqualified.bean.Article> list = Util.toArticleBeans(l,o);
			com.bestqualified.bean.Article a = list.get(0);
			req.setAttribute("currentArticle", a);
			
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bq/community/article.jsp");
			
			rd.include(req, resp);
		}
	}

}
