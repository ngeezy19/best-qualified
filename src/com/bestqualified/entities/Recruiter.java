package com.bestqualified.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;

public class Recruiter implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1722882341592791037L;
	
	private Key id, userKey;
	private List<Key> company;
	private List<Key> jobs;
	private Set<BlobKey> cvs;
	private Set<Key> profile;
	private Set<Key> searchResult;
	
	public Recruiter() {
		id = GeneralController.ds.allocateIds(Recruiter.class.getSimpleName(), 1).getStart();
		this.company = new ArrayList<>();
		this.jobs = new ArrayList<>();
		this.cvs = new HashSet<>();
		this.searchResult =  new HashSet<>();
		this.profile = new HashSet<>();
	}
	
	public Recruiter(Key key) {
		this();
		this.userKey = key;
	}

	
	@Override
	public String toString() {
		return "Recruiter [id=" + id + ", userKey=" + userKey + ", company="
				+ company + ", jobs=" + jobs + ", cvs=" + cvs + ", profile="
				+ profile + ", searchResult=" + searchResult + "]";
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

	public List<Key> getCompany() {
		return company;
	}
	public void setCompany(List<Key> company) {
		this.company = company;
	}
	public List<Key> getJobs() {
		return jobs;
	}
	public void setJobs(List<Key> jobs) {
		this.jobs = jobs;
	}
	public Set<BlobKey> getCvs() {
		return cvs;
	}
	public void setCvs(Set<BlobKey> cvs) {
		this.cvs = cvs;
	}
	public Set<Key> getProfile() {
		return profile;
	}
	public void setProfile(Set<Key> profile) {
		this.profile = profile;
	}
	public Set<Key> getSearchResult() {
		return searchResult;
	}
	public void setSearchResult(Set<Key> searchResult) {
		this.searchResult = searchResult;
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
