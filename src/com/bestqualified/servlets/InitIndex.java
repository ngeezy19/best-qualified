package com.bestqualified.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.IndexBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.Job;
import com.bestqualified.util.Util;

public class InitIndex extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6687825036237009485L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<com.bestqualified.entities.Article> articles = GeneralController.getNArticlesByDate(3);
		List<Job> jobs = GeneralController.getNJobs(10);
		
		IndexBean ib = new IndexBean();
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}
		ib.setArticles(Util.toArticleBeans(articles,o));
		ib.setIjs(Util.toInterestedJobs(jobs));
		
		String date = new SimpleDateFormat("MMMM-dd-yyyy")
		.format(new Date());
		
		
		
		synchronized (session) {
			session.setAttribute("indexBean", ib);
			session.setAttribute("currentDate", date);
		}
		
	}

}
