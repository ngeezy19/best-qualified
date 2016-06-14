package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class Comment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2623911719760601659L;
	
	private Key key;
	private Key author;
	private Date date;
	private Text body;
	private List<Key> comments;
	@Override
	public String toString() {
		return "Comment [key=" + key + ", author=" + author + ", date=" + date
				+ ", body=" + body + ", comments=" + comments + "]";
	}
	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	public Key getAuthor() {
		return author;
	}
	public void setAuthor(Key author) {
		this.author = author;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Text getBody() {
		return body;
	}
	public void setBody(Text body) {
		this.body = body;
	}
	public List<Key> getComments() {
		return comments;
	}
	public void setComments(List<Key> comments) {
		this.comments = comments;
	}
	
	

}
