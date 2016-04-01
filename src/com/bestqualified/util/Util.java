package com.bestqualified.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.bestqualified.bean.SignUpBean;
import com.bestqualified.entities.User;

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
}
