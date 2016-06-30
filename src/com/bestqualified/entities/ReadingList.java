package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;

import com.bestqualified.controllers.GeneralController;
import com.bestqualified.util.Util;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class ReadingList implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4053305542018770728L;
	
	private Key id;
	private String bookTitle;
	private String author;
	private String publisher;
	private String link;
	private Text description;
	private Date date;
	private BlobKey imageKey;
	private String imageUrl;
	
	public String toString() {
		return "Reading List [name=" + bookTitle + ", date=" + date + ", author="
				+ author + ", publisher=" + publisher + ", link=" + link
				+ ", description=" + description + ", image=" + imageKey +  "]";
	}
	
	public String getBookTitle() {
		
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
	
	
	public String getLink() {
		return link;
	}
	
	public void setLink(String link) {
		this.link = link;
	}
	
	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public Key getId() {
		return id;
	}

	public void setId(Key id) {
		this.id = id;
	}
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public Text getDescription() {
		return description;
	}

	public void setDescription(Text description) {
		this.description = description;
	}
	
	public BlobKey getImageKey() {
		return imageKey;
	}

	public void setImageKey(BlobKey imageKey) {
		this.imageKey = imageKey;
		this.imageUrl = Util.getPictureUrl(imageKey);
	}
	
	public String getImageUrl() {
		
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	public ReadingList() {
		this.id = GeneralController.ds.allocateIds(
				ReadingList.class.getSimpleName(), 1).getStart();
	}
}
