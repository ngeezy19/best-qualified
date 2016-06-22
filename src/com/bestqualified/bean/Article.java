package com.bestqualified.bean;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable, Comparable<Article> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7886491805459375745L;
	private String pictureUrl,title,author,snippet, webkey;
	private String postDate;
	
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
	public String getPostDate() {
		return postDate;
	}
	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	@Override
	public int compareTo(Article o) {
		// TODO Auto-generated method stub
		return o.getPostDate().compareTo(this.postDate);
	}
	public String getWebkey() {
		return webkey;
	}
	public void setWebkey(String webkey) {
		this.webkey = webkey;
	}
	public String getSnippet() {
		return snippet;
	}
	public void setSnippet(String snippet) {
		this.snippet = snippet;
	}
	@Override
	public String toString() {
		return "Article [pictureUrl=" + pictureUrl + ", title=" + title
				+ ", author=" + author + ", snippet=" + snippet + ", webkey="
				+ webkey + ", postDate=" + postDate + "]";
	}
	

}
