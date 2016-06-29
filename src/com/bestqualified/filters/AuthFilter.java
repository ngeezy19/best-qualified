package com.bestqualified.filters;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.SignUpBean;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;
import com.bestqualified.util.Util;
import com.google.appengine.api.datastore.Entity;


public class AuthFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletResponse resp = (HttpServletResponse) arg1;
		HttpServletRequest req = (HttpServletRequest) arg0;

		String requestUri = req.getRequestURI();
		String queryString = req.getQueryString();
		HttpSession session = req.getSession();

		Object o = null;

		synchronized (session) {
			o = session.getAttribute("user");
			session.setAttribute("requestUri", requestUri);
			session.setAttribute("queryString", queryString);
		}

		if (o != null) {
			User u = (User) o;
			if (u.isVerified()) {
				if (!Util.notNull(u.getUserType())) {
					resp.sendRedirect(resp.encodeRedirectURL("/major-interest"));
					return;
				} else {

					if (u.isAuthenticated()) {
						arg2.doFilter(arg0, arg1);
					} else {
						resp.sendRedirect(resp.encodeRedirectURL("/sign-in"));
					}

				}

			} else {
				SignUpBean sub = Util.userToSignUpBean(u);
				synchronized (session) {
					session.setAttribute("sub", sub);
					session.removeAttribute("signupError");
					session.setMaxInactiveInterval(86400);
				}
				String body = Util.getConfirmationCodeEmailBody(
						sub.getVerificationCode(), sub.getFirstName());
				try {
					Util.sendConfirmationCodeEmail(sub.getEmail(), body);
				} catch (AddressException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (MessagingException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

				System.out.println(sub.getVerificationCode());
				resp.sendRedirect(resp.encodeRedirectURL("/email-verification"));
				return;
			}
		} else {
			String jobKey = req.getParameter("job-key");
			if(jobKey!=null) {
				synchronized (session) {
					session.setAttribute("requestUri", "/bq/open/job");
					session.setAttribute("queryString","job-key="+jobKey);
				}
			}
			String mode = req.getParameter("mode");
			if(mode != null && mode.equalsIgnoreCase("ajax")) {
				resp.sendError(HttpServletResponse.SC_PAYMENT_REQUIRED, resp.encodeRedirectURL("/sign-in"));
				return;
			}else {
				resp.sendRedirect(resp.encodeRedirectURL("/sign-in"));
			}
			
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
