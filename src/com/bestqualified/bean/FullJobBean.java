package com.bestqualified.bean;

import java.io.Serializable;

public class FullJobBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1995636493440046969L;

	private String title, location, applicationUrl, applicationDeadline,
			jobRole, jobDesc, careerLevel, educationLevel, jobType,
			salaryRange, yearsOfExperience, skills, additionalInfo;
	private boolean applyWithLinkedIn;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getApplicationUrl() {
		return applicationUrl;
	}
	public void setApplicationUrl(String applicationUrl) {
		this.applicationUrl = applicationUrl;
	}
	public String getApplicationDeadline() {
		return applicationDeadline;
	}
	public void setApplicationDeadline(String applicationDeadline) {
		this.applicationDeadline = applicationDeadline;
	}
	public String getJobRole() {
		return jobRole;
	}
	public void setJobRole(String jobRole) {
		this.jobRole = jobRole;
	}
	public String getJobDesc() {
		return jobDesc;
	}
	public void setJobDesc(String jobDesc) {
		this.jobDesc = jobDesc;
	}
	public String getCareerLevel() {
		return careerLevel;
	}
	public void setCareerLevel(String careerLevel) {
		this.careerLevel = careerLevel;
	}
	public String getEducationLevel() {
		return educationLevel;
	}
	public void setEducationLevel(String educationLevel) {
		this.educationLevel = educationLevel;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getSalaryRange() {
		return salaryRange;
	}
	public void setSalaryRange(String salaryRange) {
		this.salaryRange = salaryRange;
	}
	public String getYearsOfExperience() {
		return yearsOfExperience;
	}
	public void setYearsOfExperience(String yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getAdditionalInfo() {
		return additionalInfo;
	}
	public void setAdditionalInfo(String additionalInfo) {
		this.additionalInfo = additionalInfo;
	}
	public boolean isApplyWithLinkedIn() {
		return applyWithLinkedIn;
	}
	public void setApplyWithLinkedIn(boolean applyWithLinkedIn) {
		this.applyWithLinkedIn = applyWithLinkedIn;
	}

	
}
