package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

import com.bestqualified.entities.Job;
import com.bestqualified.entities.SavedSearch;

public class ProjectBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7574324814935282277L;
	
	private String webKey,name,dateCreated,description, expiryDate,jobTitle,companyLogo;
	private int newApplicants,totalApplicants,inviteSent, shortListed, savedSeach;
	private List<ProView> shortlistedCandidates,invitees,applicants;
	private FullJobBean job;
	private List<SavedSearch> savedsearch;
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((webKey == null) ? 0 : webKey.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProjectBean other = (ProjectBean) obj;
		if (webKey == null) {
			if (other.webKey != null)
				return false;
		} else if (!webKey.equals(other.webKey))
			return false;
		return true;
	}
	
	
	public int getSavedSeach() {
		return savedSeach;
	}
	public void setSavedSeach(int savedSeach) {
		this.savedSeach = savedSeach;
	}
	public int getShortListed() {
		return shortListed;
	}
	public void setShortListed(int shortListed) {
		this.shortListed = shortListed;
	}
	public List<ProView> getInvitees() {
		return invitees;
	}
	public void setInvitees(List<ProView> invitees) {
		this.invitees = invitees;
	}
	public List<ProView> getApplicants() {
		return applicants;
	}
	public void setApplicants(List<ProView> applicants) {
		this.applicants = applicants;
	}
	public FullJobBean getJob() {
		return job;
	}
	public void setJob(FullJobBean job) {
		this.job = job;
	}
	public List<SavedSearch> getSavedsearch() {
		return savedsearch;
	}
	public void setSavedsearch(List<SavedSearch> savedsearch) {
		this.savedsearch = savedsearch;
	}
	public List<ProView> getShortlistedCandidates() {
		return shortlistedCandidates;
	}
	public void setShortlistedCandidates(List<ProView> shortlistedCandidates) {
		this.shortlistedCandidates = shortlistedCandidates;
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
