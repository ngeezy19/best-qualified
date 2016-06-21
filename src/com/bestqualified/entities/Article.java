package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class Article implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6543815782172323770L;
	
	private Key key;
	private String title;
	private Date date;
	private int views;
	private Text body;
	private ArticleCategory category;
	private List<String> tag;
	private Key author;
	private List<Key> comments;
	private List<Key> subscribers;
	private BlobKey imageKey;

	@Override
	public String toString() {
		return "Article [title=" + title + ", date=" + date + ", views="
				+ views + ", body=" + body + ", category=" + category
				+ ", tag=" + tag + ", author=" + author + ", comments="
				+ comments + ", subscribers=" + subscribers + "]";
	}

	public String getTitle() {
		
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public Text getBody() {
		return body;
	}

	public void setBody(Text body) {
		this.body = body;
	}

	public ArticleCategory getCategory() {
		return category;
	}

	public void setCategory(ArticleCategory category) {
		this.category = category;
	}

	public List<String> getTag() {
		return tag;
	}

	public void setTag(List<String> tag) {
		this.tag = tag;
	}

	public Key getAuthor() {
		return author;
	}

	public void setAuthor(Key author) {
		this.author = author;
	}

	public List<Key> getComments() {
		return comments;
	}

	public void setComments(List<Key> comments) {
		this.comments = comments;
	}

	public List<Key> getSubscribers() {
		return subscribers;
	}

	public void setSubscribers(List<Key> subscribers) {
		this.subscribers = subscribers;
	}
	
	public Key getKey() {
		return key;
	}

	public void setKey(Key key) {
		this.key = key;
	}

	public Article() {
		this.key = GeneralController.ds.allocateIds(
				Article.class.getSimpleName(), 1).getStart();
	}

	public BlobKey getImageKey() {
		return imageKey;
	}

	public void setImageKey(BlobKey imageKey) {
		this.imageKey = imageKey;
	}

}
