package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;

public class Topic implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2203897978668160806L;
	private Key id;
	private Date dateCreated;
	private String title;
	private List<Key> posts;
	
	@Override
	public String toString() {
		return "Topic [id=" + id + ", dateCreated=" + dateCreated + ", title="
				+ title + ", posts=" + posts + "]";
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public List<Key> getPosts() {
		return posts;
	}
	public void setPosts(List<Key> posts) {
		this.posts = posts;
	}
	
	public Topic(){
		this.id = GeneralController.ds.allocateIds(
				Topic.class.getSimpleName(), 1).getStart();
	}
	

}
