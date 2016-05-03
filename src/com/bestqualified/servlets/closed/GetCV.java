package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

public class GetCV extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3121226191004213407L;
	private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String safeKey = req.getParameter("safe-key");
		BlobKey bk = new BlobKey(safeKey);
		blobstoreService.serve(bk, resp);
	}

}
