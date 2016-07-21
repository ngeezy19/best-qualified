package com.bestqualified.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.Topic;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class CreatePost extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -390620203106727185L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();

		BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
		Map<String, List<BlobKey>> blobFields = blobstoreService.getUploads(req);
		List<BlobKey> blobKeys = blobFields.get("image");
		BlobKey blobKey = null;
		if (!(blobKeys == null) && !blobKeys.isEmpty()) {
			blobKey = blobKeys.get(0);
		}

		String body = req.getParameter("body");
		String dropd = req.getParameter("item");

		if (!Util.notNull(body)) {
			synchronized (session) {
				session.setAttribute("postError", "Post something");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/create-post"));
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

	//	List<Entity> listOfPosts = new ArrayList<>();

	//	List<Key> keys = new ArrayList<>();
		
		Community c = new Community();
		c.setName(dropd);
		Entity e = EntityConverter.communityToEntity(c);

		Article art = new Article();
		art.setDate(date);
		art.setBody(textBody);
		art.setImageKey(blobKey);
		art.setAuthor(u.getUserKey());
		Entity e1 = EntityConverter.ArticleToEntity(art);
		GeneralController.createWithCrossGroup(e,e1);

		synchronized (session) {
			session.setAttribute("postSuccess", "Post Created");
			resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/comm-postad"));
			return;
		}
	}

}
