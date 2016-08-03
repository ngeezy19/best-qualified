package com.bestqualified.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.Article;
import com.bestqualified.bean.CommunityBean;
import com.bestqualified.util.Util;
import com.google.gson.Gson;

public class GetCompletePost extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5278307136764980593L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String webkey = req.getParameter("webkey");
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("communityBean");
		}
		
		if(o!=null) {
			CommunityBean cb = (CommunityBean) o;
			List<Article> list = cb.getPost();
			String rText = null;
			for(Article a : list) {
				if(Util.notNull(webkey) && webkey.equals(a.getWebkey())) {
					rText = a.getRemainingSnippet();
					break;
				}
			}
			if(rText!=null) {
				String headerName = req.getHeader("x-requested-with");
				if(headerName != null && headerName.equalsIgnoreCase("XMLHttpRequest")) {
					resp.setContentType("application/json");
					Gson gson = new Gson();
					resp.getWriter().write(gson.toJson(rText));
				}
				
			}
		}
	}

}
