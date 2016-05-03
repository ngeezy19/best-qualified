package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class MyJobs implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1747630783553128082L;
	
	private List<InterestedJob> iJobs;
	private String jobsCursor;
	private int savedJobs,jobAlerts,applications;
	public List<InterestedJob> getiJobs() {
		return iJobs;
	}
	public void setiJobs(List<InterestedJob> iJobs) {
		this.iJobs = iJobs;
	}
	public String getJobsCursor() {
		return jobsCursor;
	}
	public void setJobsCursor(String jobsCursor) {
		this.jobsCursor = jobsCursor;
	}
	public int getSavedJobs() {
		return savedJobs;
	}
	public void setSavedJobs(int savedJobs) {
		this.savedJobs = savedJobs;
	}
	public int getJobAlerts() {
		return jobAlerts;
	}
	public void setJobAlerts(int jobAlerts) {
		this.jobAlerts = jobAlerts;
	}
	public int getApplications() {
		return applications;
	}
	public void setApplications(int applications) {
		this.applications = applications;
	}
	@Override
	public String toString() {
		return "MyJobs [iJobs=" + iJobs + ", jobsCursor=" + jobsCursor
				+ ", savedJobs=" + savedJobs + ", jobAlerts=" + jobAlerts
				+ ", applications=" + applications + "]";
	}
	
	
}
