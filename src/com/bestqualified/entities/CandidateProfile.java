package com.bestqualified.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class CandidateProfile implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6614668581048779740L;

	private Key id;
	private Key candidateId;
	private String careerLevel;
	private String currentState, currentCountry;
	private Set<Key> profileViewers;
	private Set<Key> jobsApplied;
	private String currentEmployer;
	private Set<Key> cvDownloaders;
	private List<Key> workExperience;
	private List<Key> education;
	private List<Key> awards;
	private List<Key> certifications;
	private String jobType;
	private String yearsOfExperience;
	private Text profileDescription;
	private String nationality;
	private String lga;
	private String stateOfOrigin;
	private List<BlobKey> pictures;
	private List<Key> connections, savedJobs, jobAlerts;
	private BlobKey cv;
	private String highestEducationLevel;
	
	
	
	public String getHighestEducationLevel() {
		return highestEducationLevel;
	}


	public void setHighestEducationLevel(String highestEducationLevel) {
		this.highestEducationLevel = highestEducationLevel;
	}


	public CandidateProfile(Key candidateId) {
		this.candidateId = candidateId;
		this.id = GeneralController.ds.allocateIds(
				CandidateProfile.class.getSimpleName(), 1).getStart();
		this.profileViewers = new HashSet<>();
		this.jobsApplied = new HashSet<>();
		this.cvDownloaders = new HashSet<>();
		this.workExperience = new ArrayList<>();
		this.education = new ArrayList<>();
		this.awards = new ArrayList<>();
		this.certifications = new ArrayList<>();
		this.pictures = new ArrayList<>();
		this.connections = new ArrayList<>();
		this.savedJobs = new ArrayList<>();
		this.jobAlerts = new ArrayList<>();
	}

	
	public BlobKey getCv() {
		return cv;
	}
	
	

	


	@Override
	public String toString() {
		return "CandidateProfile [id=" + id + ", candidateId=" + candidateId
				+ ", careerLevel=" + careerLevel + ", currentState="
				+ currentState + ", currentCountry=" + currentCountry
				+ ", profileViewers=" + profileViewers + ", jobsApplied="
				+ jobsApplied + ", currentEmployer=" + currentEmployer
				+ ", cvDownloaders=" + cvDownloaders + ", workExperience="
				+ workExperience + ", education=" + education + ", awards="
				+ awards + ", certifications=" + certifications + ", jobType="
				+ jobType + ", yearsOfExperience=" + yearsOfExperience
				+ ", profileDescription=" + profileDescription
				+ ", nationality=" + nationality + ", lga=" + lga
				+ ", stateOfOrigin=" + stateOfOrigin + ", pictures=" + pictures
				+ ", connections=" + connections + ", savedJobs=" + savedJobs
				+ ", jobAlerts=" + jobAlerts + ", cv=" + cv + "]";
	}


	public String getCurrentState() {
		return currentState;
	}


	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}


	public String getCurrentCountry() {
		return currentCountry;
	}


	public void setCurrentCountry(String currentCountry) {
		this.currentCountry = currentCountry;
	}


	public void setCv(BlobKey cv) {
		this.cv = cv;
	}

	public List<Key> getConnections() {
		return connections;
	}

	public void setConnections(List<Key> connections) {
		this.connections = connections;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getLga() {
		return lga;
	}

	public void setLga(String lga) {
		this.lga = lga;
	}

	public String getStateOfOrigin() {
		return stateOfOrigin;
	}

	public void setStateOfOrigin(String stateOfOrigin) {
		this.stateOfOrigin = stateOfOrigin;
	}

	public List<BlobKey> getPictures() {
		return pictures;
	}

	public void setPictures(List<BlobKey> pictures) {
		this.pictures = pictures;
	}

	public Key getId() {
		return id;
	}

	public void setId(Key id) {
		this.id = id;
	}

	public Key getCandidateId() {
		return candidateId;
	}

	public void setCandidateId(Key candidateId) {
		this.candidateId = candidateId;
	}

	public String getCareerLevel() {
		return careerLevel;
	}

	public void setCareerLevel(String careerLevel) {
		this.careerLevel = careerLevel;
	}

	

	public Set<Key> getProfileViewers() {
		return profileViewers;
	}

	public void setProfileViewers(Set<Key> profileViewers) {
		this.profileViewers = profileViewers;
	}

	public Set<Key> getJobsApplied() {
		return jobsApplied;
	}

	public void setJobsApplied(Set<Key> jobsApplied) {
		this.jobsApplied = jobsApplied;
	}

	public String getCurrentEmployer() {
		return currentEmployer;
	}

	public void setCurrentEmployer(String currentEmployer) {
		this.currentEmployer = currentEmployer;
	}

	public Set<Key> getCvDownloaders() {
		return cvDownloaders;
	}

	public void setCvDownloaders(Set<Key> cvDownloaders) {
		this.cvDownloaders = cvDownloaders;
	}

	public List<Key> getWorkExperience() {
		return workExperience;
	}

	public void setWorkExperience(List<Key> workExperience) {
		this.workExperience = workExperience;
	}

	public List<Key> getEducation() {
		return education;
	}

	public void setEducation(List<Key> education) {
		this.education = education;
	}

	public List<Key> getAwards() {
		return awards;
	}

	public void setAwards(List<Key> awards) {
		this.awards = awards;
	}

	public List<Key> getCertifications() {
		return certifications;
	}

	public void setCertifications(List<Key> certifications) {
		this.certifications = certifications;
	}

	

	public String getJobType() {
		return jobType;
	}


	public void setJobType(String jobType) {
		this.jobType = jobType;
	}


	public String getYearsOfExperience() {
		return yearsOfExperience;
	}


	public void setYearsOfExperience(String yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}


	public Text getProfileDescription() {
		return profileDescription;
	}

	public void setProfileDescription(Text profileDescription) {
		this.profileDescription = profileDescription;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((candidateId == null) ? 0 : candidateId.hashCode());
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
		CandidateProfile other = (CandidateProfile) obj;
		if (candidateId == null) {
			if (other.candidateId != null)
				return false;
		} else if (!candidateId.equals(other.candidateId))
			return false;
		return true;
	}

	public List<Key> getJobAlerts() {
		return jobAlerts;
	}

	public void setJobAlerts(List<Key> jobAlerts) {
		this.jobAlerts = jobAlerts;
	}

	public List<Key> getSavedJobs() {
		return savedJobs;
	}

	public void setSavedJobs(List<Key> savedJobs) {
		this.savedJobs = savedJobs;
	}

	

}
