package com.bestqualified.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.CommunityBean;
import com.bestqualified.bean.CommunityPageBean;
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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();

		User u = null;
		Object o = null;
		CommunityPageBean cb = null;
		Object o2 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o2 = session.getAttribute("communityPageBean");
		}

		if (o != null && o2 != null) {
			u = (User) o;
			cb = (CommunityPageBean) o2;
		} else {
			synchronized (session) {
				session.setAttribute("joinError", "no community selected");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/general-community"));
				return;
			}
		}

	
		List<Key> listOfMembers = null;

		String webKey = req.getParameter("webkey");

		if (!Util.notNull(webKey)) {
			synchronized (session) {
				session.setAttribute("joinError", "no community selected");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/general-community"));
				return;

			}

		}
		Key key = KeyFactory.stringToKey(webKey);
		Object o1 = MemcacheProvider.COMMUNITIES.get(key);

		Community c = null;
		if (o1 != null) {
		
			c = (Community) o1;
			listOfMembers = c.getMembers();
			if(listOfMembers == null) {
				listOfMembers = new ArrayList<>();
			}
			if(!listOfMembers.contains(u.getUserKey())) {
				listOfMembers.add(u.getUserKey());
				c.setMembers(listOfMembers);
			}
			
			
			List<Key> comms = u.getCommunities();
			if(comms == null) {
				comms = new ArrayList<>();
			}
			
			
			if(!comms.contains(c.getId())) {
				comms.add(c.getId());
				u.setCommunities(comms);
			}
			
			
			List<CommunityBean> lcb = cb.getCommunities();
			for(CommunityBean cmb:lcb) {
				if(webKey.equals(cmb.getWebSafeKey())) {
					cmb.setMembers(c.getMembers().size());
					break;
				}
			}
			
		}
		
		

		GeneralController.createWithCrossGroup(EntityConverter
			.communityToEntity(c), EntityConverter.userToEntity(u));
		MemcacheProvider.COMMUNITIES.delete(c.getId());

		synchronized (session) {
			session.setAttribute("user", u);
			session.setAttribute("communityPageBean", cb);
			resp.sendRedirect(resp.encodeRedirectURL("/community?webkey="+webKey));
			return;
		}
	}

}
