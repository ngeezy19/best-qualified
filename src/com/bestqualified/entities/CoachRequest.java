package com.bestqualified.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Date;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class CoachRequest implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6913556482110284471L;

	private Key id, userKey;
	private String email, phone, type, txnRef,firstName,lastName, serviceName, price;
	private Text body;
	private boolean paid;
	private Date date;
	private long webPayPrice;
	private String redirectUrl,hash;
	
	private static final double ONLINE_PRICE = 50000, ONE_ON_ONE_PRICE = 70000;

	@Override
	public String toString() {
		return "CoachRequest [id=" + id + ", email=" + email + ", phone="
				+ phone + ", type=" + type + ", body=" + body + ", paid="
				+ paid + ", date=" + date + "]";
	}
	
	

	public String getRedirectUrl() {
		return redirectUrl;
	}

	

	public String getHash() {
		return hash;
	}



	public void setHash(String hash) {
		this.hash = hash;
	}



	public void setRedirectUrl(String redirectUrl) {
		
		this.redirectUrl = redirectUrl;
	}



	public long getWebPayPrice() {
		return webPayPrice;
	}



	public void setWebPayPrice(long webPayPrice) {
		this.webPayPrice = webPayPrice;
	}



	public String getServiceName() {
		return serviceName;
	}

	

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}



	public static double getOnlinePrice() {
		return ONLINE_PRICE;
	}



	public static double getOneOnOnePrice() {
		return ONE_ON_ONE_PRICE;
	}



	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}



	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public Key getUserKey() {
		return userKey;
	}
	public void setUserKey(Key userKey) {
		this.userKey = userKey;
	}
	public String getTxnRef() {
		return txnRef;
	}



	public void setTxnRef(String txnRef) {
		this.txnRef = txnRef;
	}



	public Key getId() {
		return id;
	}

	public void setId(Key id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		DecimalFormat df = new DecimalFormat("#.##");
		this.type = type;
		if(type.equalsIgnoreCase("online")) {
			serviceName = "Online Coaching";
		
			price = df.format(ONLINE_PRICE);
			webPayPrice = (long) (ONLINE_PRICE*100);
		}else {
			serviceName = "One-On-One Coaching";
			price = df.format(ONE_ON_ONE_PRICE);
			webPayPrice = (long) (ONE_ON_ONE_PRICE*100);
		}
	}

	public Text getBody() {
		return body;
	}

	public void setBody(Text body) {
		this.body = body;
	}

	public boolean isPaid() {
		return paid;
	}

	public void setPaid(boolean paid) {
		this.paid = paid;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public CoachRequest() {
		id = GeneralController.ds.allocateIds(
				CoachRequest.class.getSimpleName(), 1).getStart();
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}
