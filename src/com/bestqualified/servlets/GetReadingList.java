
package com.bestqualified.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.ReadingList;
import com.bestqualified.util.Util;



public class GetReadingList extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1477727040955965118L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<ReadingList> readingLists = GeneralController.getNReadingListByDate(9);
		for(ReadingList rd : readingLists) {
			rd.setImageUrl(Util.getPictureUrl(rd.getImageKey()));
		}
		
		HttpSession session = req.getSession();
		
		synchronized (session) {
			session.setAttribute("readingList", readingLists);
		}
		resp.sendRedirect(resp.encodeRedirectURL("/bq/coaching/tools/reading-list"));
	}

}

