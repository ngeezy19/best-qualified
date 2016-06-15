package com.bestqualified.admin;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;

public class CreateArticleServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8570856744229917246L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp){
		
		String title = req.getParameter("title");
		String body = req.getParameter("body");
		String category = req.getParameter("retypepass");
		String tags[] = req.getParameterValues("tags");
				
		HttpSession session = req.getSession();
		session.getAttribute("user");
		
		
		//title
		//body text
		//category
		//tags-an array -getParameter values
			//nullpointer exception
		
		//subscribe - dont store the var
		 	// if true: store user in list of subscribers
			//if not true: dont store user
		
		//author-pick user from session as userKey
		//date -new date() - get the current date
		
		
		
	}

}
