package com.bestqualified.bean;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable, Comparable<Article> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7886491805459375745L;
	private String pictureUrl,title,author;
	private Date postDate;
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	@Override
	public int compareTo(Article o) {
		// TODO Auto-generated method stub
		return o.getPostDate().compareTo(this.postDate);
	}
	
	

}
