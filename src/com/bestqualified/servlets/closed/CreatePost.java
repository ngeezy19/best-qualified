package com.bestqualified.servlets.closed;

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

import com.bestqualified.bean.CommunityBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Article;
import com.bestqualified.entities.ArticleCategory;
import com.bestqualified.entities.Community;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.MemcacheProvider;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;
import com.google.gson.Gson;

public class CreatePost extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5586806864031364915L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();

		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
		Map<String, List<BlobKey>> blobFields = blobstoreService
				.getUploads(req);
		List<BlobKey> blobKeys = blobFields.get("image");
		BlobKey blobKey = null;
		if (!(blobKeys == null) && !blobKeys.isEmpty()) {
			blobKey = blobKeys.get(0);
		}

		String body = req.getParameter("body");
		String webkey = req.getParameter("webkey");

		if (!Util.notNull(body)) {
			synchronized (session) {
				session.setAttribute("postError", "Post something");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/close/community/new-post"));
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
			Date date = new Date();
			Text textBody = new Text(body);

			Key key = KeyFactory.stringToKey(webkey);
			List<Key> l = new ArrayList<>();
			l.add(key);
			List<Community> comms = Util.getCommunityFromCache(l);
			Community comm = comms.get(0);

			List<Key> listOfPosts = comm.getPosts();

			if (listOfPosts == null) {
				listOfPosts = new ArrayList<>();
			}

			Article art = new Article();
			art.setDate(date);
			art.setBody(textBody);
			art.setImageKey(blobKey);
			art.setCategory(ArticleCategory.POST);
			art.setAuthor(u.getUserKey());
			art.setCommunity(comm.getId());

			listOfPosts.add(art.getKey());
			comm.setPosts(listOfPosts);

			MemcacheProvider.COMMUNITIES.put(comm.getId(), comm);
			GeneralController.createWithCrossGroup(
					EntityConverter.communityToEntity(comm),
					EntityConverter.ArticleToEntity(art));

			Object o1 = null;
			synchronized (session) {
				o1 = session.getAttribute("communityBean");
			}

			if (o1 != null) {
				CommunityBean cb = (CommunityBean) o1;
				List<com.bestqualified.bean.Article> as = cb.getPost();
				if (as == null) {
					as = new ArrayList<>();
				}
				List<Article> aas = new ArrayList<>();
				aas.add(art);
				List<com.bestqualified.bean.Article> aaa = Util
						.toArticleBeans(aas);
				as.addAll(0, aaa);
				cb.setPost(as);
				
				synchronized (session) {
					session.setAttribute("communityBean", cb);
				}
				
				resp.sendRedirect(resp.encodeRedirectURL("/community?webkey="+webkey));
			}
			
			

		}

	}

}
