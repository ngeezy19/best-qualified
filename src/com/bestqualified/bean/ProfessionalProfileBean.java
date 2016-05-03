package com.bestqualified.bean;

import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import java.util.List;

import com.bestqualified.entities.Award;
import com.bestqualified.entities.Certification;
import com.bestqualified.entities.Education;
import com.bestqualified.entities.WorkExperience;

public class ProfessionalProfileBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4433392462932050893L;
	
	private PropertyChangeSupport pcs = new PropertyChangeSupport(this);

	private String firstName,lastName,tagline,currentEmployer,email,phone,profileSummary,cv,cvSafeString;
	private List<WorkExperience> workExperience;
	private List<Education> education;
	private List<Award> awards;
	private List<Certification> certifications;
	
	
	public String getCvSafeString() {
		return cvSafeString;
	}
	public void setCvSafeString(String cvSafeString) {
		this.cvSafeString = cvSafeString;
	}
	public String getCv() {
		
		return cv;
	}
	public void setCv(String cv) {
		pcs.firePropertyChange("cv", this.cv, cv);

		this.cv = cv;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		pcs.firePropertyChange("firstName", this.firstName, firstName);

		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		pcs.firePropertyChange("lastName", this.lastName, lastName);

		this.lastName = lastName;
	}
	public String getTagline() {
		return tagline;
	}
	public void setTagline(String tagline) {
		pcs.firePropertyChange("tagline", this.tagline,tagline);

		this.tagline = tagline;
	}
	public String getCurrentEmployer() {
		return currentEmployer;
	}
	public void setCurrentEmployer(String currentEmployer) {
		pcs.firePropertyChange("currentEmployer", this.currentEmployer, currentEmployer);

		this.currentEmployer = currentEmployer;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		pcs.firePropertyChange("email", this.email, email);
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		pcs.firePropertyChange("phone", this.phone, phone);

		this.phone = phone;
	}
	public String getProfileSummary() {
		return profileSummary;
	}
	public void setProfileSummary(String profileSummary) {
		pcs.firePropertyChange("profileSummary", this.profileSummary, profileSummary);

		this.profileSummary = profileSummary;
	}
	public List<WorkExperience> getWorkExperience() {
		return workExperience;
	}
	public void setWorkExperience(List<WorkExperience> workExperience) {
	
		this.workExperience = workExperience;
	}
	public List<Education> getEducation() {
		return education;
	}
	public void setEducation(List<Education> education) {

		this.education = education;
	}
	public List<Award> getAwards() {
		return awards;
	}
	public void setAwards(List<Award> awards) {
		this.awards = awards;
	}
	public List<Certification> getCertifications() {
		return certifications;
	}
	public void setCertifications(List<Certification> certifications) {
		this.certifications = certifications;
	}
	@Override
	public String toString() {
		return "ProfessionalProfileBean [pcs=" + pcs + ", firstName="
				+ firstName + ", lastName=" + lastName + ", tagline=" + tagline
				+ ", currentEmployer=" + currentEmployer + ", email=" + email
				+ ", phone=" + phone + ", profileSummary=" + profileSummary
				+ ", cv=" + cv + ", workExperience=" + workExperience
				+ ", education=" + education + ", awards=" + awards
				+ ", certifications=" + certifications + "]";
	}
	
	

}
