package com.bestqualified.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bestqualified.bean.FacebookAccessTokenResponse;
import com.bestqualified.bean.InterestedJob;
import com.bestqualified.bean.ProfessionalDashboard;
import com.bestqualified.bean.SignUpBean;
import com.bestqualified.bean.SocialUser;
import com.bestqualified.bean.SocialUser.SocialNetwork;
import com.bestqualified.controllers.GeneralController;
import com.bestqualified.entities.CandidateProfile;
import com.bestqualified.entities.Recruiter;
import com.bestqualified.entities.User;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;
import com.google.appengine.api.images.ServingUrlOptions;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;
import com.google.appengine.labs.repackaged.org.json.JSONTokener;

public class Util {

	public static final String SERVICE_ACCOUNT = "best-qualified@gmail.com";

	public static boolean notNull(String... args) {
		for (String s : args) {
			if (s == null || s.isEmpty()) {
				return false;
			}
		}
		return true;
	}

	public static String generateRandomCode(int minVal, int maxVal) {
		Random ran = new Random();
		return new Integer(minVal + ran.nextInt(maxVal)).toString();
	}

	public static String toSHA512(String str) {
		StringBuffer sb = new StringBuffer();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			md.update(str.getBytes());

			byte byteData[] = md.digest();

			// convert the byte to hex format method 1

			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16)
						.substring(1));
			}

		} catch (NoSuchAlgorithmException e) { // TODO Auto-generated catch
												// block
			e.printStackTrace();
		}
		return sb.toString();
	}

	public static boolean sendEmail(String from, String to, String title,
			String body) throws AddressException, MessagingException {

		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		try {
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(Util.SERVICE_ACCOUNT,
					"Best Qualified Admin", "UTF-8"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(title);
			msg.setText(body);
			msg.setContent(body, "text/html");
			Transport.send(msg);

		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();

		}
		return true;

	}

	public static User signUpBeanToUser(SignUpBean sub) {
		User u = new User(sub.getFirstName(), sub.getLastName());
		u.setEmail(sub.getEmail());
		u.setFirstName(sub.getFirstName());
		u.setJoinedDate(new Date());
		u.setPassword(sub.getPassword());
		u.setLastName(sub.getLastName());
		if (sub.getUserType() != null) {
			u.setUserType(sub.getUserType().name());
		}

		return u;
	}

	public static void sendConfirmationCodeEmail(String email, String body)
			throws AddressException, MessagingException {
		String title = "Best Qualified Confirmation Code";
		String to = email.toLowerCase();
		Util.sendEmail(Util.SERVICE_ACCOUNT, to, title, body);
		// Util.sendEmailNotification( to, title, body);
	}

	public static String getConfirmationCodeEmailBody(String code, String name) {
		if (name == null) {
			name = "";
		}
		return "<body><div style='width: 40%; margin: 0 auto'>"
				+ "<img alt='Best Qualified' src='http://best-qualified.appspot.com/images/bq-logo.png'/>"
				+ "</div><div><h4 style='padding-bottom: 3%;'>Hello "
				+ name
				+ ",</h4>"
				+ "<h3 style='color:#d9534f'>Best Qualified Verification Code</h3><p>Your new account is almost ready.</p>"
				+ "<p>Before you can login you have to verfiy your email by entering this code: <strong style='color:#d9534f'>"
				+ code
				+ "</strong></p><p>This code is valid for the next 24hrs.</p>"
				+ "<p>Regards,</p><p>Best Qualified Team</p></div></body>";
	}

	public static String getAccountCreatedMsg(String firstName) {

		return "<body><div style='width: 40%; margin: 0 auto'>"
				+ "<img alt='Best Qualified' src='http://best-qualified.appspot.com/images/bq-logo.png'/>"
				+ "</div><div><h4 style='padding-bottom: 3%;'>Hello "
				+ firstName
				+ ",</h4>"
				+ "<h3 style='color:#d9534f'>Best Qualified Account Created Successfully</h3><p>Your new account is aready.</p>"
				+ "<p>Regards,</p><p>Best Qualified Team</p></div></body>";
	}

	public static User mergeUsers(User u, User u1) {
		u.setBirthDate(u1.getBirthDate());
		u.setEmails(u1.getEmails());
		u.setFacebookID(u1.getFacebookID());
		u.setGender(u.getGender());
		u.setGoogleID(u1.getGoogleID());
		u.setJoinedDate(u1.getJoinedDate());
		u.setLinkedInID(u1.getLinkedInID());
		u.setPhone(u1.getPhone());
		u.setProfilePicture(u1.getProfilePicture());
		u.setTwitterID(u1.getTwitterID());
		u.setUserInfo(u1.getUserInfo());
		u.setUserType(u1.getUserType());
		u.setVerified(u1.isVerified());
		return u;
	}

	public static SignUpBean userToSignUpBean(User u) {
		SignUpBean sub = new SignUpBean();
		sub.setEmail(u.getEmail());
		sub.setFirstName(u.getFirstName());
		sub.setLastName(u.getLastName());
		sub.setPassword(u.getPassword());
		return sub;
	}

	public static List<InterestedJob> getJobs(Key careerLevel,
			List<Key> education) {

		return null;
	}

	public static String getPictureUrl(BlobKey key) {
		if (key == null) {
			return "/images/unknown-user.jpg";
		} else {
			ServingUrlOptions suo = ServingUrlOptions.Builder.withBlobKey(key);
			ImagesService is = ImagesServiceFactory.getImagesService();
			return is.getServingUrl(suo);
		}
	}

	public static long calculateProfileStrength(User u, CandidateProfile cp) {
		// TODO Auto-generated method stub
		return 0;
	}

	public static ProfessionalDashboard initProfessionalDashboardBean(User u,
			CandidateProfile cp) {
		ProfessionalDashboard pd = new ProfessionalDashboard();
		// pd.setArticles(Util.getDashboardArticles());
		pd.setCurrentEmployer(cp.getCurrentEmployer());
		pd.setiJobs(Util.getJobs(cp.getCareerLevel(), cp.getEducation()));
		pd.setName(u.getFirstName() + " " + u.getLastName());
		pd.setNoOfConnections(String.valueOf((cp.getConnections() == null) ? 0
				: cp.getConnections().size()));
		pd.setNoOfProfileViewers(String
				.valueOf((cp.getProfileViewers() == null) ? 0 : cp
						.getProfileViewers().size()));
		if(u.getPictureUrl() == null) {
			pd.setPictureUrl((u.getProfilePicture() == null) ? StringConstants.UNKNOWN_USER:Util.getPictureUrl(u.getProfilePicture()));
		}else {
			pd.setPictureUrl(u.getPictureUrl());
		}
		pd.setProfileStrength(Util.calculateProfileStrength(u, cp));
		pd.setTagline(u.getTagline());
		return pd;
	}

	public static FacebookAccessTokenResponse toFacebookAccessTokenResponse(
			String respString) {
		respString = respString.replace("{", "").replace("}", "")
				.replace("\"", "");
		String[] str = respString.split(",");
		FacebookAccessTokenResponse fatr = new FacebookAccessTokenResponse();
		for (String s : str) {
			String[] ss = s.split(":");
			if (ss[0].equalsIgnoreCase("access_token")) {
				if (ss.length > 1) {
					fatr.setAccessToken(ss[1]);
				}

			} else if (ss[0].equalsIgnoreCase("expires_in")) {
				if (ss.length > 1) {
					fatr.setExpires(ss[1]);
				}

			} else if (ss[0].equalsIgnoreCase("token_type")) {
				if (ss.length > 1) {
					fatr.setTokenType(ss[1]);
				}

			}

		}
		return fatr;
	}

	public static SocialUser toFaceBookSocialUser(String respString) {
		SocialUser su = new SocialUser();
		su.setNetwork(SocialNetwork.FACEBOOK);
		JSONTokener jt = new JSONTokener(respString);
		JSONObject jo;
		try {
			jo = new JSONObject(jt);
			if (respString.contains("email")) {
				su.setEmail(jo.getString("email"));
			}
			if (respString.contains("first_name")) {
				su.setFirstName(jo.getString("first_name"));
			}
			if (respString.contains("gender")) {
				su.setGender(jo.getString("gender"));
			}
			if (respString.contains("id")) {
				su.setId(jo.getString("id"));
			}
			if (respString.contains("last_name")) {
				su.setLastName(jo.getString("last_name"));
			}
			su.setPictureUrl(jo.getJSONObject("picture").getJSONObject("data")
					.getString("url"));
			su.setVerified(jo.getBoolean("verified"));
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return su;
	}

	public static void logUserIn(User u, HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		u.setAuthenticated(true);
		Entity e = GeneralController.findByKey(u.getUserInfo());
		CandidateProfile cp = null;
		if(u.getUserType().equalsIgnoreCase(User.UserType.PROFESSIONAL.name())) {
			cp = EntityConverter.entityToCandidateProfile(e, u.getUserKey());
			synchronized (session) {
				session.setAttribute("professionalProfile", cp);
			}
		}else if(u.getUserType().equalsIgnoreCase(User.UserType.RECRUITER.name())) {
			Recruiter r = EntityConverter.entityToRecruiter(e);
		}
		
		RequestDispatcher rd = req.getRequestDispatcher("/bq/closed/init-dashboard");
		rd.forward(req, resp);
		
	}

	public static User socialUserToUser(SocialUser su) {
		User u = new User(su.getFirstName(), su.getLastName());
		u.setGender(su.getGender());
		u.setTagline(su.getHeadline());
		u.setPictureUrl(su.getPictureUrl());
		u.setJoinedDate(new Date());
		if(!u.getEmails().contains(su.getEmail())) {
			u.getEmails().add(su.getEmail());
		}
		switch (su.getNetwork()) {
		case FACEBOOK:
			u.setFacebookID(su.getId());
			break;
		case LINKEDIN:
			u.setLinkedInID(su.getId());
			break;
		case TWITTER:
			u.setTwitterID(su.getId());
			break;
		case GOOGLE:
			u.setGoogleID(su.getId());
		}
		return u;
	}
}
