package com.bestqualified.bean;

import java.io.Serializable;

import com.bestqualified.entities.Education;
import com.bestqualified.entities.WorkExperience;

public class ProView implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4986859380455459455L;
	
	private String firstName,lastName,state,country,numberOfConnections, projectName;
	WorkExperience workExperience;
	Education education;
	
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getNumberOfConnections() {
		return numberOfConnections;
	}
	public void setNumberOfConnections(String numberOfConnections) {
		this.numberOfConnections = numberOfConnections;
	}
	public WorkExperience getWorkExperience() {
		return workExperience;
	}
	public void setWorkExperience(WorkExperience workExperience) {
		this.workExperience = workExperience;
	}
	public Education getEducation() {
		return education;
	}
	public void setEducation(Education education) {
		this.education = education;
	}
	@Override
	public String toString() {
		return "ProView [firstName=" + firstName + ", lastName=" + lastName
				+ ", state=" + state + ", country=" + country
				+ ", numberOfConnections=" + numberOfConnections
				+ ", workExperience=" + workExperience + ", education="
				+ education + "]";
	}
	
	

}
