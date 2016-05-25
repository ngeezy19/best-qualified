package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class JobSearchResult implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6476260354966777700L;
	private String searchString;
	private List<InterestedJob> ijobs;
	private long totalNumber;
	private long numberFetched;
	private long numberToFetch = 10;
	private String cursor;
	
	
	
	public long getTotalNumber() {
		return totalNumber;
	}
	public void setTotalNumber(long totalNumber) {
		this.totalNumber = totalNumber;
	}
	public long getNumberFetched() {
		return numberFetched;
	}
	public void setNumberFetched(long numberFetched) {
		this.numberFetched = numberFetched;
	}
	public long getNumberToFetch() {
		return numberToFetch;
	}
	public void setNumberToFetch(long numberToFetch) {
		this.numberToFetch = numberToFetch;
	}
	public String getCursor() {
		return cursor;
	}
	public void setCursor(String cursor) {
		this.cursor = cursor;
	}
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
