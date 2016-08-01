package com.bestqualified.servlets;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.entities.CoachRequest;
import com.bestqualified.util.Util;
import com.google.appengine.api.urlfetch.HTTPHeader;
import com.google.appengine.api.urlfetch.HTTPRequest;
import com.google.appengine.api.urlfetch.HTTPResponse;
import com.google.appengine.api.urlfetch.URLFetchService;
import com.google.appengine.api.urlfetch.URLFetchServiceFactory;


public class InterswitchResponse extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3237981962034306029L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		CoachRequest cr = null;
		Object o = null;

		HttpSession session = req.getSession();

		synchronized (session) {
			o = session.getAttribute("coachRequest");
		}

		if (o == null) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"No Session");
		} else {
			cr = (CoachRequest) o;
			URL url = new URL(
					"https://stageserv.interswitchng.com/test_paydirect/api/v1/gettransaction.json?productid="
							+ Util.INTERSWITCH_PRODUCT_ID
							+ "&transactionreference="
							+ cr.getTxnRef()
							+ "&amount=" + cr.getWebPayPrice());
			HTTPRequest r = new HTTPRequest(url);
			r.addHeader(new HTTPHeader("Hash", Util.
					getInterswitchHash(cr.getTxnRef())));
			URLFetchService urlfetch = URLFetchServiceFactory
					.getURLFetchService();
			HTTPResponse response = null;
			try {
				response = urlfetch.fetch(r);
			} catch (SocketTimeoutException ste) {
				//RequestDispatcher rd = req
				//		.getRequestDispatcher("/WEB-INF/sm/closed/interswitch-response.jsp");
				//rd.include(req, resp);
				return;
			}
		}
	}

}
