package com.bestqualified.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreFailureException;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class CreateArticleServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8570856744229917246L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {

		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
		Map<String, List<BlobKey>> blobFields = blobstoreService
				.getUploads(req);
		List<BlobKey> blobKeys = blobFields.get("image");
		BlobKey blobKey = null;
		if (blobKeys != null && !blobKeys.isEmpty()) {
			// We're only expecting one, so take the first one.
			blobKey = blobKeys.get(0);
		}

		String title = req.getParameter("title");
		String bodystr = req.getParameter("post");
		String category = req.getParameter("category");
		String subscribe = req.getParameter("subscribe");
		
		HttpSession session = req.getSession();

		if (!Util.notNull(title)) {
			synchronized (session) {
				session.setAttribute("articleError", "Enter Title");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/article"));
				return;

			}

		}

		if (!Util.notNull(bodystr)) {
			synchronized (session) {
				session.setAttribute("articleError", "Enter Post");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/article"));
				return;
			}

		}

		ArticleCategory cat = null;
		if (Util.notNull(category)) {
			cat = ArticleCategory.valueOf(category
					.toUpperCase());

		}else {
			cat = ArticleCategory.OTHER;
		}

		

		User u = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");

		}

		if (o != null) {
			u = (User) o;
			List<Key> subscr = new ArrayList<>();
			if(Util.notNull(subscribe)) {
				subscr.add(u.getUserKey());
			}
			Text body = new Text(bodystr);

			Date date = new Date();
			
			Article article = new Article();
			article.setTitle(title);
			article.setBody(body);
			article.setDate(date);
			article.setCategory(cat);
			article.setAuthor(u.getUserKey());
			article.setImageKey(blobKey);
			article.setSubscribers(subscr);

			Entity e = EntityConverter.ArticleToEntity(article);
			GeneralController.create(e);

			synchronized (session) {
				session.setAttribute("articleSuccess", "Article Created");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/article"));
				return;
			}

		}

	}

}
