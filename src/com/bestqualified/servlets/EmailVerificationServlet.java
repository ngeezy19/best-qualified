package com.bestqualified.servlets;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.SignUpBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;

public class EmailVerificationServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 885919566248828641L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String verificationCode = req.getParameter("code");
		HttpSession session = req.getSession();
		if (Util.notNull(verificationCode)) {
			Object o = null;
			Object o1 = null;
			if (session.isNew()) {
				synchronized (session) {
					session.setAttribute("verificationCodeError",
							"Your session has expired. Start again <a href='/sign-in'>here</a>");
				}
				resp.sendRedirect(resp
						.encodeRedirectURL("/endpoint/verification-code-page"));
				return;
			}
			synchronized (session) {
				o = session.getAttribute("sub");
				o1 = session.getAttribute("user");
				session.setMaxInactiveInterval(1800);
			}
			if (o != null && o1 != null) {
				SignUpBean sub = (SignUpBean) o;
				User u = (User) o1;
				if (sub.getVerificationCode().equals(verificationCode.trim())) {
					Object o5 = null;
					synchronized (session) {
						o5 = session.getAttribute("fromForgotPassword");

					}
					if (o5 != null) {
						resp.sendRedirect(resp
								.encodeRedirectURL("/endpoint/password-change"));
						synchronized (session) {
							session.removeAttribute("fromForgotPassword");
						}
						return;
					}
					u.setVerified(true);
					Entity e = EntityConverter.userToEntity(u);
					GeneralController.create(e);

					String body = Util.getAccountCreatedMsg(u.getFirstName());
					try {
						Util.sendEmail(Util.SERVICE_ACCOUNT, u.getEmail(),
								"Best Qualified Account Created", body);
					} catch (AddressException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (MessagingException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					synchronized (session) {
						session.removeAttribute("verificationCodeError");
						session.removeAttribute("sub");
						session.setAttribute("user", u);
					}

					resp.sendRedirect(resp.encodeRedirectURL("/major-interest"));

					return;
				} else {
					synchronized (session) {
						session.setAttribute("verificationCodeError",
								"The code you entered in not correct.");
					}
					resp.sendRedirect(resp
							.encodeRedirectURL("/endpoint/verification-code-page"));
					return;
				}
			} else {
				synchronized (session) {
					session.setAttribute("verificationCodeError",
							"A fatal error has occured. <a href='/login'>Try again</a>");
				}
				resp.sendRedirect(resp
						.encodeRedirectURL("/endpoint/verification-code-page"));
				return;
			}
		} else {
			synchronized (session) {
				session.setAttribute("verificationCodeError",
						"You have to enter the verification code sent to your email.");
			}
			resp.sendRedirect(resp
					.encodeRedirectURL("/endpoint/verification-code-page"));
		}

	}

}
