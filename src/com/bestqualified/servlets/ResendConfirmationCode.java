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
import com.bestqualified.util.Util;



public class ResendConfirmationCode extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5226735781601609132L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("sub");
		}
		SignUpBean su = null;
		if(o != null) {
			su =  (SignUpBean) o;
		}
		
		su.setVerificationCode(Util.generateRandomCode(100000, 999999));
		
		try {
			String body = Util.getConfirmationCodeEmailBody(su.getVerificationCode(), su.getFirstName());
			System.out.print(su.getVerificationCode());
			Util.sendConfirmationCodeEmail(su.getEmail(), body);
			synchronized (session) {
				session.setAttribute("sub", su);
				session.removeAttribute("verificationError");
			}
			
			resp.sendRedirect(resp.encodeRedirectURL("/email-verification"));
		} catch (AddressException e) {
			e.printStackTrace();
			session.setAttribute("emailVerifyError","The email address " + su.getEmail()
					+ " is either invalid or does not exist.");
			resp.sendRedirect(resp.encodeRedirectURL("/email-verification"));
			return;

		} catch (MessagingException e) {
			e.printStackTrace();
			session.setAttribute("emailVerifyError","We could not send a confirmation code to " + su.getEmail()
					+ ". Please try again later.");
			resp.sendRedirect(resp.encodeRedirectURL("/email-verification"));
			return;
			
		}
		
		

	}

}
