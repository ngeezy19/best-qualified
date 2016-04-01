package com.bestqualified.bean;

import java.io.Serializable;

import com.bestqualified.entities.User;
import com.bestqualified.util.Util;

public class SignUpBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1950498185225463673L;
	private String firstName, lastName, email, password, verificationCode;
	private User.UserType userType;
	
	
	@Override
	public String toString() {
		return "SignUpBean [firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", password=" + password
				+ ", verificationCode=" + verificationCode + ", userType="
				+ userType + "]";
	}

	public User.UserType getUserType() {
		return userType;
	}

	public void setUserType(User.UserType userType) {
		this.userType = userType;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = Util.toSHA512(password);
	}
	public String getVerificationCode() {
		return verificationCode;
	}
	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
	}
	public SignUpBean() {
		this.verificationCode = Util.generateRandomCode(111111, 999999);
	}
	
	
	
}
