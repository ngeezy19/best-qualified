package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
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
	private List<Key> profiles;
	private Key jobs;
	private List<Key> savedSearch;
	private Text description;
	
	
	public Project() {
		this.id = GeneralController.ds.allocateIds(Project.class.getSimpleName(), 1).getStart();
		this.safeKey = KeyFactory.keyToString(id);
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
		return profiles;
	}
	public void setProfiles(List<Key> profiles) {
		this.profiles = profiles;
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
				+ ", dateCreated=" + dateCreated + ", profiles=" + profiles
				+ ", jobs=" + jobs + ", savedSearch=" + savedSearch
				+ ", description=" + description + "]";
	}
	
	

}
