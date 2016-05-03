package com.bestqualified.servlets.closed;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Project;
import com.bestqualified.util.EntityConverter;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class GetProject extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6336491499606258326L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
			String webKey = req.getParameter("web-key");
			
			Key key = KeyFactory.stringToKey(webKey);
			Entity e = GeneralController.findByKey(key);
			if(e!=null) {
				Project p = EntityConverter.entityToProject(e);
				RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bq/close/project.jsp");
				rd.include(req,resp);
			} else {
				resp.getWriter().write("We could not find what you are looking for.");
			}
	}

}
