package com.bestqualified.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
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

public class AdminCreateCommunity extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 616027673877299693L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.getWriter().write("Here");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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

		List<BlobKey> blobKeysWallp = blobFields.get("wallpaper");
		BlobKey blobKeyWall = null;
		if (!(blobKeysWallp == null) && !blobKeysWallp.isEmpty()) {
			blobKeyWall = blobKeysWallp.get(0);
		}

		String name = req.getParameter("name");
		String shortDesc = req.getParameter("short-desc");
		String longDesc = req.getParameter("long-desc");
		String commPubPriv = req.getParameter("public-private");
		String topics = req.getParameter("topics");
		

		

		if (!Util.notNull(name)) {
			synchronized (session) {
				session.setAttribute("communityError",
						"Enter Name of Community");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/admin/create-community"));
				return;

			}

		}

		if (!Util.notNull(shortDesc)) {
			synchronized (session) {
				session.setAttribute("communityError",
						"Enter a short description");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/admin/create-community"));
				return;

			}

		}
		if (!Util.notNull(longDesc)) {
			synchronized (session) {
				session.setAttribute("communityError",
						"Enter a long description");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/admin/create-community"));
				return;

			}

		}
		if (!Util.notNull(topics)) {
			synchronized (session) {
				session.setAttribute("communityError",
						"Enter topics that apply to your community");
				resp.sendRedirect(resp
						.encodeRedirectURL("/bq/admin/create-community"));
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
		Text textlongDesc = new Text(longDesc);
		Text textshortDesc = new Text(shortDesc);
		
		String[] str = topics.split(";");
		List<Entity> listOfTopics = new ArrayList<>();
		
		List<Key> keys = new ArrayList<>();
		
		
		for (String s : str) {
			Topic t = new Topic();
			t.setTitle(s);
			t.setDateCreated(new Date());
			listOfTopics.add(EntityConverter.topicToEntity(t));
			keys.add(t.getId());
			
		}

		Community community = new Community();
		community.setName(name);
		community.setDateCreated(date);
		community.setLongDesc(textlongDesc);
		community.setShortDesc(textshortDesc);
		community.setTopics(keys);
		community.setImage(blobKey);
		community.setWallpaper(blobKeyWall);
		community.setOwner(u.getUserKey());

		if (Util.notNull(commPubPriv)) {
			community.setCommPublic(true);
		}
		
		Entity e = EntityConverter.communityToEntity(community);
		listOfTopics.add(e);
		GeneralController.createWithCrossGroup(listOfTopics );
		
		synchronized (session) {
			session.setAttribute("communitySuccess", "Community Created");
			resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/communityad"));
			return;
		}
	}

}