package com.bestqualified.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.entities.Job;

public class ProjectBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9208965564921673356L;
	
	private String safeKey;
	private String name;
	private String dateCreated;
	private List<ProView> profiles;
	private Job job;
	private List<ProView> savedSearch;
	private String description;
	public String getSafeKey() {
		return safeKey;
	}
	public void setSafeKey(String safeKey) {
		this.safeKey = safeKey;
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
	public List<ProView> getProfiles() {
		return profiles;
	}
	public void setProfiles(List<ProView> profiles) {
		this.profiles = profiles;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public List<ProView> getSavedSearch() {
		return savedSearch;
	}
	public void setSavedSearch(List<ProView> savedSearch) {
		this.savedSearch = savedSearch;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "ProjectBean [safeKey=" + safeKey + ", name=" + name
				+ ", dateCreated=" + dateCreated + ", profiles=" + profiles
				+ ", job=" + job + ", savedSearch=" + savedSearch
				+ ", description=" + description + "]";
	}

}
