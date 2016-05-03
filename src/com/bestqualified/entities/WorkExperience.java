package com.bestqualified.entities;

import java.io.Serializable;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;

public class WorkExperience implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5829939499326232098L;
	
	private Key id;
	private String position;
	private String company;
	private boolean currentJob;
	private Key jobRegion;
	private Text jobDuties;
	private double salary;
	private String salaryCurrency;
	private String startMonth;
	private String startYear;
	private String endMonth;
	private String endYear;
	private String safeKey;
	
	
	
	@Override
	public String toString() {
		return "WorkExperience [id=" + id + ", position=" + position
				+ ", company=" + company + ", currentJob=" + currentJob
				+ ", jobRegion=" + jobRegion + ", jobDuties=" + jobDuties
				+ ", salary=" + salary + ", salaryCurrency=" + salaryCurrency
				+ ", startMonth=" + startMonth + ", startYear=" + startYear
				+ ", endMonth=" + endMonth + ", endYear=" + endYear + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		WorkExperience other = (WorkExperience) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	public String getSafeKey() {
		return safeKey;
	}
	public void setSafeKey(String safeKey) {
		this.safeKey = safeKey;
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
		safeKey = KeyFactory.keyToString(id);
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public boolean isCurrentJob() {
		return currentJob;
	}
	public void setCurrentJob(boolean currentJob) {
		this.currentJob = currentJob;
	}
	public Key getJobRegion() {
		return jobRegion;
	}
	public void setJobRegion(Key jobRegion) {
		this.jobRegion = jobRegion;
	}
	public Text getJobDuties() {
		return jobDuties;
	}
	public void setJobDuties(Text jobDuties) {
		this.jobDuties = jobDuties;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getSalaryCurrency() {
		return salaryCurrency;
	}
	public void setSalaryCurrency(String salaryCurrency) {
		this.salaryCurrency = salaryCurrency;
	}
	public String getStartMonth() {
		return startMonth;
	}
	public void setStartMonth(String startMonth) {
		this.startMonth = startMonth;
	}
	public String getStartYear() {
		return startYear;
	}
	public void setStartYear(String startYear) {
		this.startYear = startYear;
	}
	public String getEndMonth() {
		return endMonth;
	}
	public void setEndMonth(String endMonth) {
		this.endMonth = endMonth;
	}
	public String getEndYear() {
		return endYear;
	}
	public void setEndYear(String endYear) {
		this.endYear = endYear;
	}
	public WorkExperience() {
		this.id = GeneralController.ds.allocateIds(WorkExperience.class.getSimpleName(), 1).getStart();
		safeKey = KeyFactory.keyToString(id);
	}
	
	
}
