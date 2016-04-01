package com.bestqualified.entities;

import java.io.Serializable;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;

public class Company implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6244547057135289015L;
	
	private Key id;
	private String companyName;
	private List<Key> industries;
	private String companyWebsite;
	private Key location;
	private String address;
	private String linkedIn;
	private String facebook;
	private String twitter;
	private String googlePlus;
	private String description;
	private String tagline;
	private List<Key> recruiter;
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
		Company other = (Company) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	public Company() {
		id = GeneralController.ds.allocateIds(Company.class.getSimpleName(), 1).getStart();
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public List<Key> getIndustries() {
		return industries;
	}
	public void setIndustries(List<Key> industries) {
		this.industries = industries;
	}
	public String getCompanyWebsite() {
		return companyWebsite;
	}
	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}
	public Key getLocation() {
		return location;
	}
	public void setLocation(Key location) {
		this.location = location;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLinkedIn() {
		return linkedIn;
	}
	public void setLinkedIn(String linkedIn) {
		this.linkedIn = linkedIn;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getGooglePlus() {
		return googlePlus;
	}
	public void setGooglePlus(String googlePlus) {
		this.googlePlus = googlePlus;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTagline() {
		return tagline;
	}
	public void setTagline(String tagline) {
		this.tagline = tagline;
	}
	public List<Key> getRecruiter() {
		return recruiter;
	}
	public void setRecruiter(List<Key> recruiter) {
		this.recruiter = recruiter;
	}
	@Override
	public String toString() {
		return "Company [id=" + id + ", companyName=" + companyName
				+ ", industries=" + industries + ", companyWebsite="
				+ companyWebsite + ", location=" + location + ", address="
				+ address + ", linkedIn=" + linkedIn + ", facebook=" + facebook
				+ ", twitter=" + twitter + ", googlePlus=" + googlePlus
				+ ", description=" + description + ", tagline=" + tagline
				+ ", recruiter=" + recruiter + "]";
	}
	
	

}
