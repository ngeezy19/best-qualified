package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class Job implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7898460568156561794L;
	
	private Key id;
	
	private Date closingDate;
	private String salaryRange;
	private String salaryCurrency;
	private String careerLevel;
	private boolean allowLinkedInApplication;
	private boolean allowFacebookApplication;
	private String Location;
	private String educationLevel;
	private boolean positionFilled;
	private String jobType;
	private List<String> jobCategory;
	private Key Employer;
	private List<Key> applicants;
	private String jobTitle;
	private Date datePosted;
	private String description;
	private List<Key> invitesSent;
	private Text customAttributes;
	private String experience;
	private String applicationUrl;
	
	
	
	public Job() {
		id = GeneralController.ds.allocateIds(Job.class.getSimpleName(), 1).getStart();
	}

	@Override
	public String toString() {
		return "Job [id=" + id + ", closingDate=" + closingDate
				+ ", salaryRange=" + salaryRange + ", salaryCurrency="
				+ salaryCurrency + ", careerLevel=" + careerLevel
				+ ", allowLinkedInApplication=" + allowLinkedInApplication
				+ ", allowFacebookApplication=" + allowFacebookApplication
				+ ", Location=" + Location + ", educationLevel="
				+ educationLevel + ", positionFilled=" + positionFilled
				+ ", jobType=" + jobType + ", jobCategory=" + jobCategory
				+ ", Employer=" + Employer + ", applicants=" + applicants
				+ ", jobTitle=" + jobTitle + ", datePosted=" + datePosted
				+ ", description=" + description + ", invitesSent="
				+ invitesSent + ", customAttributes=" + customAttributes
				+ ", experience=" + experience + ", applicationUrl="
				+ applicationUrl + "]";
	}

	public String getApplicationUrl() {
		return applicationUrl;
	}
	
	public void setApplicationUrl(String applicationUrl) {
		this.applicationUrl = applicationUrl;
	}

	public String getExperience() {
		return experience;
	}


	public void setExperience(String experience) {
		this.experience = experience;
	}


	public String getSalaryRange() {
		return salaryRange;
	}


	public void setSalaryRange(String salaryRange) {
		this.salaryRange = salaryRange;
	}


	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
	}
	public Date getClosingDate() {
		return closingDate;
	}
	public void setClosingDate(Date closingDate) {
		this.closingDate = closingDate;
	}
	public String getSalaryCurrency() {
		return salaryCurrency;
	}
	public void setSalaryCurrency(String salaryCurrency) {
		this.salaryCurrency = salaryCurrency;
	}
	public String getCareerLevel() {
		return careerLevel;
	}
	public void setCareerLevel(String careerLevel) {
		this.careerLevel = careerLevel;
	}
	public boolean isAllowLinkedInApplication() {
		return allowLinkedInApplication;
	}
	public void setAllowLinkedInApplication(boolean allowLinkedInApplication) {
		this.allowLinkedInApplication = allowLinkedInApplication;
	}
	public boolean isAllowFacebookApplication() {
		return allowFacebookApplication;
	}
	public void setAllowFacebookApplication(boolean allowFacebookApplication) {
		this.allowFacebookApplication = allowFacebookApplication;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public String getEducationLevel() {
		return educationLevel;
	}
	public void setEducationLevel(String educationLevel) {
		this.educationLevel = educationLevel;
	}
	public boolean isPositionFilled() {
		return positionFilled;
	}
	public void setPositionFilled(boolean positionFilled) {
		this.positionFilled = positionFilled;
	}
	
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public List<String> getJobCategory() {
		return jobCategory;
	}
	public void setJobCategory(List<String> jobCategory) {
		this.jobCategory = jobCategory;
	}
	public Key getEmployer() {
		return Employer;
	}
	public void setEmployer(Key employer) {
		Employer = employer;
	}
	public List<Key> getApplicants() {
		return applicants;
	}
	public void setApplicants(List<Key> applicants) {
		this.applicants = applicants;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public Date getDatePosted() {
		return datePosted;
	}
	public void setDatePosted(Date datePosted) {
		this.datePosted = datePosted;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<Key> getInvitesSent() {
		return invitesSent;
	}
	public void setInvitesSent(List<Key> invitesSent) {
		this.invitesSent = invitesSent;
	}
	public Text getCustomAttributes() {
		return customAttributes;
	}
	public void setCustomAttributes(Text customAttributes) {
		this.customAttributes = customAttributes;
	}
	
	
		
	

}
