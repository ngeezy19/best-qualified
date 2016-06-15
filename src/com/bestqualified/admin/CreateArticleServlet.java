package com.bestqualified.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.ArticleCategory;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class CreateArticleServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8570856744229917246L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
		String title = req.getParameter("title");
		String bodystr = req.getParameter("body");
		String category = req.getParameter("category");
		String[] tagss = req.getParameterValues("tags");
		
		
		resp.setContentType("application/json");
		HttpSession session = req.getSession();
		
		if(!Util.notNull(title)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter title"); 
				return;
				
			}
			
		}
		
		if(!Util.notNull(bodystr)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter body");
				return;
			}
			
		}
		
		if(!Util.notNull(category)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter category"); 
				return;
			}
			
		}
		
		
		if(!Util.notNull(tagss)) {
			synchronized (session) {
				resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED, "Please enter a tag"); 
				return;
				
			}
			
		}
		
		List<String> tags = Arrays.asList(tagss);
		
		//List<Key> subscriber = req.getParameterValues("subscriber");
		String subscriber = req.getParameter("subscriber");
		
		List<Key> subscr = new ArrayList<>();
		//subscr.addAll(subscriber);
		
		User u = null;
		Object o = null;
		synchronized (session) {
			o =  session.getAttribute("user");
			
		}
		
		if(o != null) {
			u = (User) o;
			if(Util.notNull(subscriber)) {
				synchronized (session) {
					subscr.add(u.getUserKey()); 
					return;
					
				}
				
			}
			Text body = new Text(bodystr);
			
			//create list, put list, get user from sess, get userkey, add key to list for subscribers
			
			Date date = new Date();
			//date.toString();
			
			ArticleCategory cat = ArticleCategory.valueOf(category.toUpperCase());
			
			Article article = new Article();
			article.setTitle(title);
			article.setBody(body);
			article.setDate(date);
			article.setCategory(cat);
			article.setTag(tags);
			//convert array to list b4 save
			
			article.setSubscribers(subscr);
			
			Entity e = EntityConverter.ArticleToEntity(article);
			GeneralController.create(e);
			
			resp.setStatus(HttpServletResponse.SC_OK);
			
			
		}
		
	
		//title
		//body text
		//category
		//tags-an array -getParameter values
			//nullpointer exception
		
		//subscribe - dont store the var
		 	// if true: store user in list of subscribers
			//if not true: dont store user
		
		//author-pick user from session as userKey
		//date -new date() - get the current date
		
		
		
	}

}
