package com.bestqualified.bean;

import java.io.Serializable;

public class ProjectBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7574324814935282277L;
	
	private String webKey,name,dateCreated,description, expiryDate,jobTitle,companyLogo;
	private int newApplicants,totalApplicants,inviteSent;
	
	
	public String getWebKey() {
		return webKey;
	}
	public void setWebKey(String webKey) {
		this.webKey = webKey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getNewApplicants() {
		return newApplicants;
	}
	public void setNewApplicants(int newApplicants) {
		this.newApplicants = newApplicants;
	}
	
	public int getTotalApplicants() {
		return totalApplicants;
	}
	public void setTotalApplicants(int totalApplicants) {
		this.totalApplicants = totalApplicants;
	}
	public int getInviteSent() {
		return inviteSent;
	}
	public void setInviteSent(int inviteSent) {
		this.inviteSent = inviteSent;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getCompanyLogo() {
		return companyLogo;
	}
	public void setCompanyLogo(String companyLogo) {
		this.companyLogo = companyLogo;
	}
	@Override
	public String toString() {
		return "ProjectBean [webKey=" + webKey + ", name=" + name
				+ ", dateCreated=" + dateCreated + ", description="
				+ description + ", expiryDate=" + expiryDate + ", jobTitle="
				+ jobTitle + ", companyLogo=" + companyLogo
				+ ", newApplicants=" + newApplicants + ", totalApplicants="
				+ totalApplicants + ", inviteSent=" + inviteSent + "]";
	}
	
	

}
