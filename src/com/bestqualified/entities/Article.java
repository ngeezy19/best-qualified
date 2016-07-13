package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Link;
import com.google.appengine.api.datastore.Text;

public class Article implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6543815782172323770L;
	
	private Key key;
	private String title;
	private Date date;
	private long views;
	private long nComments;
	private Text body;
	private ArticleCategory category;
	private List<String> tag;
	private Key author;
	private List<Key> comments;
	private List<Key> subscribers;
	private BlobKey imageKey;
	private Link link;
	private long likes;
	private long shares;

	@Override
	public String toString() {
		return "Article [key=" + key + ", title=" + title + ", date=" + date
				+ ", views=" + views + ", nComments=" + nComments + ", body="
				+ body + ", category=" + category + ", tag=" + tag
				+ ", author=" + author + ", comments=" + comments
				+ ", subscribers=" + subscribers + ", imageKey=" + imageKey
				+ ", link=" + link + ", likes=" + likes + ", shares=" + shares
				+ "]";
	}
	
	

	public long getnComments() {
		return nComments;
	}



	public void setnComments(long nComments) {
		this.nComments = nComments;
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

	public long getViews() {
		return views;
	}

	public void setViews(long views) {
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



	public Link getLink() {
		return link;
	}



	public void setLink(Link link) {
		this.link = link;
	}



	public long getLikes() {
		return likes;
	}



	public void setLikes(long likes) {
		this.likes = likes;
	}



	public long getShares() {
		return shares;
	}



	public void setShares(long shares) {
		this.shares = shares;
	}
	
	

}
