package com.bestqualified.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.User;
import com.bestqualified.util.EntityConverter;

public class JobApplicationFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpServletResponse resp = (HttpServletResponse) arg1;

		HttpSession session = req.getSession();

		Object o = null;
		Object o1 = null;
		synchronized (session) {
			o = session.getAttribute("user");
			o1 = session.getAttribute("professionalProfile");
		}

		if (o != null) {
			User u = (User) o;
			CandidateProfile cp = null;
			if (o1 == null) {
				cp = EntityConverter.entityToCandidateProfile(
						GeneralController.findByKey(u.getUserInfo()),
						u.getUserKey());
			} else {
				cp=(CandidateProfile) o1;
			}
			
			if(cp.getCv() == null) {
				synchronized (session) {
					session.setAttribute("noCV",true);
					session.removeAttribute("cvSent");
				}
				resp.sendRedirect(resp.encodeRedirectURL("/bq/open/job-information"));
				return;
			}else {
				synchronized (session) {
					session.removeAttribute("noCV");
					session.removeAttribute("cvSent");
				}
				arg2.doFilter(arg0, arg1);
			}
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
