package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class ManageProjectBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3234180545424811257L;
	private int savedProfiles,savedSearch,newApplicants,totalApplicants;
	private List<ProjectBean> pb1;
	public int getSavedProfiles() {
		return savedProfiles;
	}
	public void setSavedProfiles(int savedProfiles) {
		this.savedProfiles = savedProfiles;
	}
	public int getSavedSearch() {
		return savedSearch;
	}
	public void setSavedSearch(int savedSearch) {
		this.savedSearch = savedSearch;
	}
	public int getNewApplicants() {
		return newApplicants;
	}
	public void setNewApplicants(int newApplicants) {
		this.newApplicants = newApplicants;
	}
	public int getTotalApplicants() {
		return totalApplicants;
	}
	public void setTotalApplicants(int totalApplicants) {
		this.totalApplicants = totalApplicants;
	}
	public List<ProjectBean> getPb1() {
		return pb1;
	}
	public void setPb1(List<ProjectBean> pb1) {
		this.pb1 = pb1;
	}
	@Override
	public String toString() {
		return "ManageProjectBean [savedProfiles=" + savedProfiles
				+ ", savedSearch=" + savedSearch + ", newApplicants="
				+ newApplicants + ", totalApplicants=" + totalApplicants
				+ ", pb1=" + pb1 + "]";
	}
	
	
	
	

}
