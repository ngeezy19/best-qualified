package com.bestqualified.servlets.coaching;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CoachRequest;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.StringConstants;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

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
		String body = req.getParameter("content");
		String type = req.getParameter("format");

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

		if (!Util.notNull(body)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to enter content for your discussion.");
			return;
		}

		if (!Util.notNull(type)) {
			resp.sendError(HttpServletResponse.SC_EXPECTATION_FAILED,
					"You have to select the type of coaching you want.");
			return;
		}

		String content = "<p>Hello Coach</p>" + "<h4></h4><div>" + body
				+ "</div><div><p>Regards,</p><p>" + firstName + " " + lastName
				+ "</p><p><strong>EMail: </strong>" + email
				+ "</p><p><strong>Phone: </strong>" + phone + "</p></div>";
		HttpSession session = req.getSession();
		Object o = null;
		User u = null;
		synchronized (session) {
			o = session.getAttribute("user");
		}
		if (o == null) {
			o = GeneralController.findUserByEmail(email);
		}
		CoachRequest cr = new CoachRequest();
		cr.setFirstName(firstName);
		cr.setLastName(lastName);
		cr.setBody(new Text(body));
		cr.setDate(new Date());
		cr.setEmail(email);
		cr.setPaid(false);
		cr.setPhone(phone);
		cr.setType(type);
		cr.setRedirectUrl(resp.encodeRedirectURL(StringConstants.WEBPAY_REDIRECT));
		cr.setTxnRef(Util.getTransactionRef(firstName, lastName));
		cr.setHash(Util.computeWebpayHash(cr.getTxnRef(), cr.getRedirectUrl(), (cr.getWebPayPrice()/100)));
		if (o != null) {
			u = (User) o;
			List<Key> list = u.getCoachRequest();
			if (list == null) {
				list = new ArrayList<>();
			}
			list.add(cr.getId());
			cr.setUserKey(u.getUserKey());

			GeneralController.createWithCrossGroup(
					EntityConverter.userToEntity(u),
					EntityConverter.CoachRequestToEntity(cr));
		} else {
			GeneralController.create(EntityConverter.CoachRequestToEntity(cr));
		}

		String clientMsg = "<p>Hello "
				+ firstName
				+ "</p><p> we have recieved your request for a coach.</p>"
				+ "<p>Your request ID is <strong style='color:green'>"
				+ cr.getTxnRef()
				+ ".</p>"
				+ " <p>Please note, this will also be used as your transaction reference when you pay.</p>"
				+ "<br/><p>Regards,<br/>Best Qualified.</p>";
		synchronized (session) {
			session.setAttribute("coachRequest", cr);
		}
		resp.setStatus(HttpServletResponse.SC_OK);

		try {
			Util.sendEmail(Util.SERVICE_ACCOUNT, "bestqualified.profiliant@gmail.com",
					"New Coaching Request", content);

			Util.sendEmail(Util.SERVICE_ACCOUNT, email, "New Coaching Request", clientMsg);
			
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
