package com.bestqualified.bean;

import java.io.Serializable;

public class InterestedJob implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9087061423485594475L;
	private String companyName, pictureUrl, jobTitle, postedTime, jobKey,companyKey,location;
	public String getCompanyName() {
		return companyName;
	}
	
	
	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getJobKey() {
		return jobKey;
	}


	public void setJobKey(String jobKey) {
		this.jobKey = jobKey;
	}


	public String getCompanyKey() {
		return companyKey;
	}


	public void setCompanyKey(String companyKey) {
		this.companyKey = companyKey;
	}


	public String getPostedTime() {
		return postedTime;
	}


	public void setPostedTime(String postedTime) {
		this.postedTime = postedTime;
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
	@Override
	public String toString() {
		return "InterestedJob [companyName=" + companyName + ", pictureUrl="
				+ pictureUrl + ", jobTitle=" + jobTitle + "]";
	}
	
	

}
