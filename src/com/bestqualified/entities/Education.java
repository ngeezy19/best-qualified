package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Education implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4329644817422965667L;
	
	private Key id;
	private String institution;
	private String course;
	private String startMonth;
	private String startYear;
	private String endMonth;
	private String endYear;
	private String country;
	private String qualification;
	private String classification;
	private String safeKey;
	
	
	
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
		this.safeKey = KeyFactory.keyToString(id);
	}
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	@Override
	public String toString() {
		return "Education [id=" + id + ", institution=" + institution
				+ ", course=" + course + ", startMonth=" + startMonth
				+ ", startYear=" + startYear + ", endMonth=" + endMonth
				+ ", endYear=" + endYear + ", country=" + country
				+ ", qualification=" + qualification + ", classification="
				+ classification + "]";
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	
	
	public Education() {
		this.id = GeneralController.ds.allocateIds(Education.class.getSimpleName(),1).getStart();
		this.safeKey = KeyFactory.keyToString(id);
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
		Education other = (Education) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	

}
