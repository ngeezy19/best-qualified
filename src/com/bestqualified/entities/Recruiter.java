package com.bestqualified.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Recruiter implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1722882341592791037L;
	
	private Key id, userKey;
	private Key company;
	private List<Key> jobs;
	private List<Key> projects;
	private String webKey;
	private List<Key> connections;
	
	public Recruiter() {
		id = GeneralController.ds.allocateIds(Recruiter.class.getSimpleName(), 1).getStart();
		this.jobs = new ArrayList<>();
		this.projects = new ArrayList<>();
		this.connections = new ArrayList<>();
		this.webKey = KeyFactory.keyToString(id);
		
	}
	
	public Recruiter(Key key) {
		this();
		this.userKey = key;
	}

	@Override
	public String toString() {
		return "Recruiter [id=" + id + ", userKey=" + userKey + ", company="
				+ company + ", jobs=" + jobs + ", projects=" + projects
				+ ", webKey=" + webKey + "]";
	}
	
	

	public List<Key> getConnections() {
		return connections;
	}

	public void setConnections(List<Key> connections) {
		this.connections = connections;
	}

	public Key getUserKey() {
		return userKey;
	}

	public void setUserKey(Key userKey) {
		this.userKey = userKey;
	}

	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
	}

	public Key getCompany() {
		return company;
	}
	public void setCompany(Key company) {
		this.company = company;
	}
	public List<Key> getJobs() {
		return jobs;
	}
	public void setJobs(List<Key> jobs) {
		this.jobs = jobs;
	}
	
	public List<Key> getProjects() {
		return projects;
	}

	public void setProjects(List<Key> projects) {
		this.projects = projects;
	}

	public String getWebKey() {
		return webKey;
	}

	public void setWebKey(String webKey) {
		this.webKey = webKey;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		Recruiter other = (Recruiter) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	

}
