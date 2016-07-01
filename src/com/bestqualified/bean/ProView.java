package com.bestqualified.bean;

import java.io.Serializable;

import com.bestqualified.entities.Education;
import com.bestqualified.entities.WorkExperience;
import com.bestqualified.util.Util;

public class ProView implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4986859380455459455L;
	
	private String firstName,lastName,highestQualification,pictureUrl,yearsOfExperience;

	@Override
	public String toString() {
		return "ProView [firstName=" + firstName + ", lastName=" + lastName
				+ ", highestQualification=" + highestQualification
				+ ", pictureUrl=" + pictureUrl + ", yearsOfExperience="
				+ yearsOfExperience + "]";
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

	public String getHighestQualification() {
		return highestQualification;
	}

	public void setHighestQualification(String highestQualification) {
		if(highestQualification != null) {
			this.highestQualification = Util.getEducationLevelValue(highestQualification);
		}
		
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

	public String getYearsOfExperience() {
		return yearsOfExperience;
	}

	public void setYearsOfExperience(String yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}
	
		

}
