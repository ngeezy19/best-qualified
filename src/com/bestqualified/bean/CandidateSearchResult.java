/**
 * 
 */
package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

/**
 * @author WebDev
 *
 */
public class CandidateSearchResult implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1778274342115109316L;
	private String searchString;
	private List<ProView> candidates;
	private long totalNumber;
	private long numberFetched;
	private long numberToFetch = 10;
	private String cursor;
	
	
	
	public String getSearchString() {
		return searchString;
	}
	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}
	public List<ProView> getCandidates() {
		return candidates;
	}
	public void setCandidates(List<ProView> candidates) {
		this.candidates = candidates;
	}
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
	@Override
	public String toString() {
		return "CandidateSearchResult [searchString=" + searchString
				+ ", candidates=" + candidates + ", totalNumber=" + totalNumber
				+ ", numberFetched=" + numberFetched + ", numberToFetch="
				+ numberToFetch + ", cursor=" + cursor + "]";
	}
	
	

}
