package com.bestqualified.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.ReadingList;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Text;


public class CreateReadingList extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5673274591424473543L;
	
	@Override
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
		
		String bookTitle = req.getParameter("title");
		String author = req.getParameter("author");
		String description = req.getParameter("description");
		String publisher = req.getParameter("publisher");
		String link = req.getParameter("link");
		
		
		HttpSession session = req.getSession();
		if (!Util.notNull(bookTitle)) {
			synchronized (session) {
				session.setAttribute("readingListError", "Enter  book title");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/reading-list"));
				return;

			}

		}

		if (!Util.notNull(description)) {
			synchronized (session) {
				session.setAttribute("readingListError", "Enter book description");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/reading-list"));
				return;
			}

		}
		
		if (!Util.notNull(author)) {
			synchronized (session) {
				session.setAttribute("readingListError", "Enter Author");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/reading-list"));
				return;
			}

		}
		
		if (!Util.notNull(link)) {
			synchronized (session) {
				session.setAttribute("readingListError", "Enter link to purchase");
				resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/reading-list"));
				return;
			}

		}
		
		
		Date date = new Date();
		Text descr = new Text(description);
		
		ReadingList rl = new ReadingList();
		rl.setBookTitle(bookTitle);
		rl.setAuthor(author);
		rl.setDate(date);
		rl.setDescription(descr);
		rl.setLink(link);
		rl.setImageKey(blobKey);
		
		if (Util.notNull(publisher)) {
			rl.setPublisher(publisher);
		}
		
		Entity e = EntityConverter.ReadingListToEntity(rl);
		GeneralController.create(e);
		
		synchronized (session) {
			session.setAttribute("articleSuccess", "Reading List Created");
			resp.sendRedirect(resp.encodeRedirectURL("/bq/admin/reading-list"));
			return;
		}
	}

}
