package com.bestqualified.servlets.closed;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.ProfessionalProfileBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.blobstore.FileInfo;
import com.google.gson.Gson;


public class UploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8258574821822424939L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String oldKey = req.getParameter("old-key");
		BlobstoreService bss = BlobstoreServiceFactory.getBlobstoreService();
		Map<String, List<BlobKey>> map = bss.getUploads(req);
		Map<String, List<FileInfo>> mp = bss.getFileInfos(req);
		List<BlobKey> keys = map.get("cv-file");
		List<FileInfo> infs = mp.get("cv-file");
		BlobKey key = null;
		FileInfo fi = null;
		if (keys != null && !keys.isEmpty() && infs != null && !infs.isEmpty()) {
			key = keys.get(0);
			fi = infs.get(0);
			HttpSession session = req.getSession();
			CandidateProfile cp = null;
			ProfessionalProfileBean ppb = null;
			synchronized (session) {
				cp = (CandidateProfile) session.getAttribute("professionalProfile");
				User u = (User) session.getAttribute("user");
				ppb = (ProfessionalProfileBean) session.getAttribute("uppb");
				cp.setCv(key);
				if(ppb == null) {
					ppb = Util.createProfessionalProfileBean(u, cp);
				}
				ppb.setCv(fi.getFilename());
				ppb.setCvSafeString(key.getKeyString());
				session.setAttribute("professionalProfile", cp);
				session.setAttribute("uppb", ppb);
			}
			
			if(Util.notNull(oldKey)) {
				BlobKey bk = new BlobKey(oldKey);
				BlobstoreServiceFactory.getBlobstoreService().delete(bk);
				
			}
			
			Map<String, String> mp1 = new HashMap<>();
			mp1.put("fileName", fi.getFilename());
			mp1.put("safeKey",  key.getKeyString());
			GeneralController.edit(EntityConverter.candidateProfileToEntity(cp));

			resp.setContentType("application/json");
			String json = null;
			json = new Gson().toJson(mp1).toString();
			System.out.println(json);
			resp.getWriter().write(json);

			
		}
	}
}
