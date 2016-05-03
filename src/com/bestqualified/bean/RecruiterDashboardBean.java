package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class RecruiterDashboardBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8867290829150190112L;
	
	private String firstName,lastName,tagline,company,noConnections;
	private List<ProView> applicants;
	private List<ProjectView> projectView;
	private int numberOfProjects;
	
	public int getNumberOfProjects() {
		return numberOfProjects;
	}
	public void setNumberOfProjects(int numberOfProjects) {
		this.numberOfProjects = numberOfProjects;
	}
	public List<ProView> getApplicants() {
		return applicants;
	}
	public void setApplicants(List<ProView> applicants) {
		this.applicants = applicants;
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
	public String getTagline() {
		return tagline;
	}
	public void setTagline(String tagline) {
		this.tagline = tagline;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getNoConnections() {
		return noConnections;
	}
	public void setNoConnections(String noConnections) {
		this.noConnections = noConnections;
	}

	public List<ProjectView> getProjectView() {
		return projectView;
	}
	public void setProjectView(List<ProjectView> projectView) {
		this.projectView = projectView;
	}
	@Override
	public String toString() {
		return "RecruiterDashboardBean [firstName=" + firstName + ", lastName="
				+ lastName + ", tagline=" + tagline + ", company=" + company
				+ ", noConnections=" + noConnections + ", applicants=" + applicants
				+ ", projectView=" + projectView + "]";
	}
	
	
	

}
