package com.bestqualified.entities;

import java.io.Serializable;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class JobAlert implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3857616906347313586L;
	private Key id;
	private String email,location,salary,jobType,careerLevel;
	@Override
	public String toString() {
		return "JobAlert [email=" + email + ", location=" + location
				+ ", salary=" + salary + ", jobType=" + jobType
				+ ", careerLevel=" + careerLevel + "]";
	}
	
	
	public Key getId() {
		return id;
	}


	public void setId(Key id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getCareerLevel() {
		return careerLevel;
	}
	public void setCareerLevel(String careerLevel) {
		this.careerLevel = careerLevel;
	}
	
	public JobAlert () {
		 id = GeneralController.ds.allocateIds(JobAlert.class.getSimpleName(), 1).getStart();
	}

}
