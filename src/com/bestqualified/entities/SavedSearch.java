package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class SavedSearch implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7974131123734255130L;
	
	private Key id;
	private String webKey;
	private String name, searchString;
	private Date dateCreated;
	
	
	
	@Override
	public String toString() {
		return "SavedSearch [id=" + id + ", webKey=" + webKey + ", name="
				+ name + ", searchString=" + searchString + ", dateCreated="
				+ dateCreated + "]";
	}
	public SavedSearch() {
		this.id = GeneralController.ds.allocateIds(SavedSearch.class.getSimpleName(), 1).getStart();
		webKey = KeyFactory.keyToString(id);
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
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
	public String getSearchString() {
		return searchString;
	}
	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	
	

}
