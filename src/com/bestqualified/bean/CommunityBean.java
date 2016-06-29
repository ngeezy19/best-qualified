package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

import com.bestqualified.entities.ReadingList;

public class CommunityBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9129909997718509114L;
	private String currentDate;
	private List<Article> latestArticles,mainPosts,discussions;
	private List<InterestedJob> jobs;
	private List<ReadingList> readingList;
	@Override
	public String toString() {
		return "CommunityBean [currentDate=" + currentDate
				+ ", latestArticles=" + latestArticles + ", mainPosts="
				+ mainPosts + ", discussions=" + discussions + ", jobs=" + jobs
				+ ", readingList=" + readingList + "]";
	}
	public String getCurrentDate() {
		return currentDate;
	}
	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}
	public List<Article> getLatestArticles() {
		return latestArticles;
	}
	public void setLatestArticles(List<Article> latestArticles) {
		this.latestArticles = latestArticles;
	}
	public List<Article> getMainPosts() {
		return mainPosts;
	}
	public void setMainPosts(List<Article> mainPosts) {
		this.mainPosts = mainPosts;
	}
	public List<Article> getDiscussions() {
		return discussions;
	}
	public void setDiscussions(List<Article> discussions) {
		this.discussions = discussions;
	}
	public List<InterestedJob> getJobs() {
		return jobs;
	}
	public void setJobs(List<InterestedJob> jobs) {
		this.jobs = jobs;
	}
	public List<ReadingList> getReadingList() {
		return readingList;
	}
	public void setReadingList(List<ReadingList> readingList) {
		this.readingList = readingList;
	}
	
	

}
