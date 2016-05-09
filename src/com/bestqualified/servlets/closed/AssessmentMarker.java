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

import com.bestqualified.bean.CorrectionBean;
import com.bestqualified.util.Util;
import com.google.gson.Gson;

public class AssessmentMarker extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String answers = req.getParameter("answers");
		List<CorrectionBean> userAns = Util.toCorrectionBean(answers);
		HttpSession session = req.getSession();
		Object o = null;
		
		synchronized (session) {
			o = session.getAttribute("correctionBean");
		}
		
		if(o!=null) {
			List<CorrectionBean> cb = (List<CorrectionBean>) o;
			if(userAns != null) {
				int score = Util.markAssessment(cb,userAns);
				double rating = Util.getRating(score,cb.size());
				synchronized (session) {
					session.setAttribute("rating", rating);
				}
				Map<String,Object> map = new HashMap<>();
				map.put("score",score+ " / "+cb.size());
				map.put("rating", rating);
				resp.setContentType("application/json");
				Gson gson = new Gson();
				String json = gson.toJson(map);
				resp.getWriter().write(json);
			}
		}
	}
}
