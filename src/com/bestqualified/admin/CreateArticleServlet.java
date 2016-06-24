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

import com.bestqualified.bean.ProfessionalDashboard;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.ArticleCategory;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
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
				if (Util.notNull(subscribe)) {
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/closed/professional/dashboard"));
				} else {
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/admin/article"));
				}

				return;

			}

		}

		if (!Util.notNull(bodystr)) {
			synchronized (session) {
				session.setAttribute("articleError", "Enter Post");
				if (Util.notNull(subscribe)) {
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/closed/professional/dashboard"));
				} else {
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/admin/article"));
				}
				return;
			}

		}

		ArticleCategory cat = null;
		if (Util.notNull(category)) {
			cat = ArticleCategory.valueOf(category.toUpperCase());

		} else {
			cat = ArticleCategory.OTHER;
		}

		User u = null;
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");

		}

		if (o != null) {
			u = (User) o;

			Text body = new Text(bodystr);

			Date date = new Date();

			Article article = new Article();
			article.setTitle(title);
			article.setBody(body);
			article.setDate(date);
			article.setCategory(cat);
			article.setAuthor(u.getUserKey());
			article.setImageKey(blobKey);
			ProfessionalDashboard pd = null;
			List<Key> subscr = new ArrayList<>();
			if (Util.notNull(subscribe)) {
				subscr.add(u.getUserKey());
				CandidateProfile cp = EntityConverter.entityToCandidateProfile(
						GeneralController.findByKey(u.getUserInfo()),
						u.getUserKey());
				List<Key> articles = cp.getArticles();
				if(articles==null) {
					articles = new ArrayList<>();
				}
				articles.add(article.getKey());
				
				Object o1 = null;
				synchronized (session) {
					o1 = session.getAttribute("professionalDashboard");
				}
				if (o1 != null) {
					pd = (ProfessionalDashboard) o1;
					List<Article> art1 = new ArrayList<>();
					art1.add(article);
					List<com.bestqualified.bean.Article> arts = Util.toArticleBeans(art1);
					pd.getArticles().add(0, arts.get(0));
					pd.setPersonalArticles(pd.getPersonalArticles()+1);
				}
			}

			article.setSubscribers(subscr);

			Entity e = EntityConverter.ArticleToEntity(article);
			GeneralController.create(e);

			synchronized (session) {
				session.setAttribute("professionalDashboard", pd);
				if (Util.notNull(subscribe)) {
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/closed/professional/dashboard"));
				} else {
					session.setAttribute("articleSuccess", "Article Created");
					resp.sendRedirect(resp
							.encodeRedirectURL("/bq/admin/article"));
				}
				return;
			}

		}

	}

}
