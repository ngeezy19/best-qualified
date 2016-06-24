package com.bestqualified.servlets;

import java.io.IOException;
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
		ib.setArticles(Util.toArticleBeans(articles));
		ib.setIjs(Util.toInterestedJobs(jobs));
		
		HttpSession session = req.getSession();
		
		synchronized (session) {
			session.setAttribute("indexBean", ib);
		}
		
	}

}
