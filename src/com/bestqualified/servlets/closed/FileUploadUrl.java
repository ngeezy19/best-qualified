package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.blobstore.UploadOptions;

public class FileUploadUrl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 764355100246411812L;

	private static final String CALlBACK = "/upload";
	private static final String SAVE_PROJECT_URL = "/bq/close/save-project";
	private static final String NEW_POST = "/bq/close/new-post";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String param = req.getParameter("param");
		BlobstoreService bss = BlobstoreServiceFactory.getBlobstoreService();
		UploadOptions upo = UploadOptions.Builder
				.withMaxUploadSizeBytesPerBlob(1024 * 1024 * 1024)
				.maxUploadSizeBytes(1024 * 1024 * 1024);
		String upLoadUrl = null;
		if (param == "new-project") {
			upLoadUrl = bss.createUploadUrl(SAVE_PROJECT_URL, upo);
		} else if (param !=null && param.equalsIgnoreCase("new-post")) {
			upLoadUrl = bss.createUploadUrl(NEW_POST, upo);
		} else {
			upLoadUrl = bss.createUploadUrl(CALlBACK, upo);
		}

		resp.setContentType("text/plain");
		req.setAttribute("uploadUrl", upLoadUrl);

		resp.getWriter().write(upLoadUrl);
	}

}
