package com.bestqualified.bean;

import java.io.Serializable;

public class InterestedJob implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9087061423485594475L;
	private String companyName, pictureUrl, jobTitle;
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	
	

}
