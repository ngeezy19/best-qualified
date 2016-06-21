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
import com.bestqualified.entities.User;
import com.bestqualified.util.Util;

public class InitVerificationCode extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9191538900973735237L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object o = null;
		synchronized (session) {
			o = session.getAttribute("user");
			session.removeAttribute("verificationCodeError");
		}
		if(o == null) {
			resp.sendRedirect("/sign-in");
			return;
		}else {
			User u = (User) o;
			SignUpBean sub = Util.userToSignUpBean(u);
			String body = Util.getConfirmationCodeEmailBody(sub.getVerificationCode(), sub.getFirstName());
			try {
				Util.sendConfirmationCodeEmail(sub.getEmail(), body);
			} catch (AddressException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (MessagingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			synchronized (session) {
				session.setAttribute("sub", sub);
			}
			resp.sendRedirect("/endpoint/verification-code-page");
		}
	
	}
}
