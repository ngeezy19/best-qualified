package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.MemcacheProvider;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class JoinCommunity extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5311678650298220678L;

	@Override
	protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();

		User u = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}

		if (o != null) {
			u = (User) o;
		}
		else {
			synchronized (session) {
				session.setAttribute("joinError", "no community selected");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/general-community"));
				return;
		}
		}

		Date date = new Date();
		List<Key> listOfMembers = new ArrayList<>();

		String webKey = req.getParameter("webkey");

		if (!Util.notNull(webKey)) {
			synchronized (session) {
				session.setAttribute("joinError", "no community selected");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/general-community"));
				return;

			}

		}
		Key key = KeyFactory.stringToKey(webKey);
		Object o1 = MemcacheProvider.COMMUNITIES.get(key);
		Community c = null;
		if (o1 == null) {
			c = EntityConverter.entityToCommunity(GeneralController.findByKey(key));
			MemcacheProvider.COMMUNITIES.put(key, c);

		} else {
			c = (Community) o1;
		}

		c.setDateCreated(date);
		
		listOfMembers.add(u.getUserKey());
		c.setMembers(listOfMembers);

		GeneralController.createWithCrossGroup(EntityConverter.communityToEntity(c));

		synchronized (session) {
			session.setAttribute("joinSuccess", "Member added");
			resp.sendRedirect(resp.encodeRedirectURL("/bq/community"));
			return;
		}
	}

}
