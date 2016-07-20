package com.bestqualified.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.entities.Article;
import com.bestqualified.entities.Topic;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Text;

public class CreatePost extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -390620203106727185L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		String body = req.getParameter("body");
		
		if (!Util.notNull(body)) {
			synchronized (session) {
				session.setAttribute("postError",
						"Post something");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/admin/create-post"));
				return;

			}
				
	}
		User u = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}

		if (o != null) {
			u = (User) o;
		}

		Date date = new Date();
		Text textBody = new Text(body);
		
		
			
			
	
		synchronized (session) {
			session.setAttribute("postSuccess", "Post Created");
			resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/comm-postad"));
			return;
		}
	}

}
