package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class JobSearchResult implements Serializable {

	private String searchString;
	private List<InterestedJob> ijobs;
	public String getSearchString() {
		return searchString;
	}
	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}
	public List<InterestedJob> getIjobs() {
		return ijobs;
	}
	public void setIjobs(List<InterestedJob> ijobs) {
		this.ijobs = ijobs;
	}
	
	
}
