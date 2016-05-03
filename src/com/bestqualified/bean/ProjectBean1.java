package com.bestqualified.bean;

import java.io.Serializable;

public class ProjectBean1 implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7574324814935282277L;
	
	private String webKey,name,dateCreated,description;
	private int newApplicants,totalApplicants,inviteSent,savedSearch,savedProfile;
	
	@Override
	public String toString() {
		return "ProjectBean1 [webKey=" + webKey + ", name=" + name
				+ ", dateCreated=" + dateCreated + ", description="
				+ description + ", newApplicants=" + newApplicants
				+ ", totalApplicants=" + totalApplicants + ", inviteSent="
				+ inviteSent + ", savedSearch=" + savedSearch
				+ ", savedProfile=" + savedProfile + "]";
	}
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
	
	public int getSavedSearch() {
		return savedSearch;
	}
	public void setSavedSearch(int savedSearch) {
		this.savedSearch = savedSearch;
	}
	public int getSavedProfile() {
		return savedProfile;
	}
	public void setSavedProfile(int savedProfile) {
		this.savedProfile = savedProfile;
	}
	
	

}
