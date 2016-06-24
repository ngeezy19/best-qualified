package com.bestqualified.bean;

import java.io.Serializable;

public class UserView implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8730618710703227217L;
	
	private String pictureUrl, name, tagline, company;

	@Override
	public String toString() {
		return "UserView [pictureUrl=" + pictureUrl + ", name=" + name
				+ ", tagline=" + tagline + ", company=" + company + "]";
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTagline() {
		return tagline;
	}

	public void setTagline(String tagline) {
		this.tagline = tagline;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
	
	

}
