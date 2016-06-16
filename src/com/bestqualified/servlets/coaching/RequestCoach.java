package com.bestqualified.servlets.coaching;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bestqualified.util.Util;

public class RequestCoach extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3059583333742962084L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String firstName = req.getParameter("first-name");
		String lastName = req.getParameter("last-name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String title = req.getParameter("title");
		String body = req.getParameter("content");
		
		resp.setContentType("application/json");

		if (!Util.notNull(firstName)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter your first name.");
			return;
		}
		if (!Util.notNull(lastName)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter your last name.");
			return;
		}
		if (!Util.notNull(email)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter your email address.");
			return;
		}
		if (!Util.notNull(phone)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter your phone number.");
			return;
		}
		if (!Util.notNull(title)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter a title for your discussion.");
			return;
		}
		if (!Util.notNull(body)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter content for your discussion.");
			return;
		}

		String content = "<p>Hello Coach</p>" + "<h4>" + title + "</h4><div>"
				+ body + "</div><div><p>Regards,</p><p>" + firstName + " "
				+ lastName + "</p><p><strong>EMail: </strong>" + email
				+ "</p><p><strong>Phone: </strong>" + phone + "</p></div>";
		try {
			Util.sendEmail(Util.SERVICE_ACCOUNT, "admin@bestqualified.com",
					title, content);
			resp.setStatus(HttpServletResponse.SC_OK);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
