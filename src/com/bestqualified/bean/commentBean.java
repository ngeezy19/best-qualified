package com.bestqualified.bean;

import java.io.Serializable;
import java.util.Date;

public class commentBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3964502508188404012L;
	
	private String authorImg, authorName, comment, time, totalComment;
	
	
	
	
	

	public String getTotalComment() {
		return totalComment;
	}

	public void setTotalComment(String totalComment) {
		this.totalComment = totalComment;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAuthorImg() {
		return authorImg;
	}

	public void setAuthorImg(String authorImg) {
		this.authorImg = authorImg;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "commentBean [authorImg=" + authorImg + ", authorName="
				+ authorName + ", comment=" + comment + "]";
	}

	
	

}
