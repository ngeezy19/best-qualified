package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.EmbeddedEntity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;

public class Project implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4172866604401474665L;
	
	private Key id;
	private String safeKey;
	private String name;
	private Date dateCreated;
	private List<Key> applicants;
	private Key jobs;
	private List<Key> savedSearch;
	private Text description;
	private List<Key> shortListedCandidates;
	private List<EmbeddedEntity> searchConditions;
	private Date interviewDate;
	private List<Key> invitees;
	private List<Key> logs;
	private List<Key> newApplicants;
	

	public List<Key> getNewApplicants() {
		return newApplicants;
	}


	public void setNewApplicants(List<Key> newApplicants) {
		this.newApplicants = newApplicants;
	}


	public Project() {
		this.id = GeneralController.ds.allocateIds(Project.class.getSimpleName(), 1).getStart();
		this.safeKey = KeyFactory.keyToString(id);
		dateCreated = new Date();
	}
	
	
	public List<Key> getApplicants() {
		return applicants;
	}


	public void setApplicants(List<Key> applicants) {
		this.applicants = applicants;
	}


	public List<Key> getShortListedCandidates() {
		return shortListedCandidates;
	}


	public void setShortListedCandidates(List<Key> shortListedCandidates) {
		this.shortListedCandidates = shortListedCandidates;
	}


	public List<EmbeddedEntity> getSearchConditions() {
		return searchConditions;
	}


	public void setSearchConditions(List<EmbeddedEntity> searchConditions) {
		this.searchConditions = searchConditions;
	}


	public Date getInterviewDate() {
		return interviewDate;
	}


	public void setInterviewDate(Date interviewDate) {
		this.interviewDate = interviewDate;
	}


	public List<Key> getInvitees() {
		return invitees;
	}


	public void setInvitees(List<Key> invitees) {
		this.invitees = invitees;
	}


	public List<Key> getLogs() {
		return logs;
	}


	public void setLogs(List<Key> logs) {
		this.logs = logs;
	}


	public Text getDescription() {
		return description;
	}

	public void setDescription(Text description) {
		this.description = description;
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
		this.safeKey = KeyFactory.keyToString(id);
	}
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
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	public List<Key> getProfiles() {
		return applicants;
	}
	public void setProfiles(List<Key> profiles) {
		this.applicants = profiles;
	}
	
	public Key getJobs() {
		return jobs;
	}
	public void setJobs(Key jobs) {
		this.jobs = jobs;
	}
	public List<Key> getSavedSearch() {
		return savedSearch;
	}
	public void setSavedSearch(List<Key> savedSearch) {
		this.savedSearch = savedSearch;
	}
	@Override
	public String toString() {
		return "Project [id=" + id + ", safeKey=" + safeKey + ", name=" + name
				+ ", dateCreated=" + dateCreated + ", applicants=" + applicants
				+ ", jobs=" + jobs + ", savedSearch=" + savedSearch
				+ ", description=" + description + "]";
	}
	
	

}
