package com.bestqualified.bean;

import java.io.Serializable;

public class Book implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5442879193832557105L;

	private String id, detailPageUrl, image, author, numberOfpages,
			publicationDate, title, review, allOffers;

	@Override
	public String toString() {
		return "Book [id=" + id + ", detailPageUrl=" + detailPageUrl
				+ ", image=" + image + ", author=" + author
				+ ", numberOfpages=" + numberOfpages + ", publicationDate="
				+ publicationDate + ", title=" + title + ", review=" + review
				+ ", allOffers=" + allOffers + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDetailPageUrl() {
		return detailPageUrl;
	}

	public void setDetailPageUrl(String detailPageUrl) {
		this.detailPageUrl = detailPageUrl;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getNumberOfpages() {
		return numberOfpages;
	}

	public void setNumberOfpages(String numberOfpages) {
		this.numberOfpages = numberOfpages;
	}

	public String getPublicationDate() {
		return publicationDate;
	}

	public void setPublicationDate(String publicationDate) {
		this.publicationDate = publicationDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
		if(this.review.length() > 500) {
			this.review=this.review.substring(0, 500);
			this.review = review.substring(0, this.review.lastIndexOf(" "));
			this.review+=" ...";
		}
	}

	public String getAllOffers() {
		return allOffers;
	}

	public void setAllOffers(String allOffers) {
		this.allOffers = allOffers;
	}

	

}
