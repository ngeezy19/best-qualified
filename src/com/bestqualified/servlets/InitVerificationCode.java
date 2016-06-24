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
		Object o1 = null;
		Object o2 = null;
		synchronized (session) {
			o2 = session.getAttribute("fromForgotPassword");
			o1 = session.getAttribute("sub");
			o = session.getAttribute("user");
			session.removeAttribute("verificationCodeError");
		}
		if(o == null) {
			resp.sendRedirect("/sign-in");
			return;
		}else {
			SignUpBean sub = null;
			User u = (User) o;
			
			if(o1 == null && o2 !=null) {//coming from forgot password
				sub = Util.userToSignUpBean(u);
			}else if(o1 != null)  {
				sub = (SignUpBean) o1;
			}
			String body = Util.getConfirmationCodeEmailBody(sub.getVerificationCode(), sub.getFirstName());
			System.out.println(sub.getVerificationCode());
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
				session.setMaxInactiveInterval(86400);
			}
			resp.sendRedirect("/endpoint/verification-code-page");
		}
	
	}
}
