package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;

import com.google.appengine.api.datastore.Key;

public class Education implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4329644817422965667L;
	
	private Key id;
	private String institution;
	private String course;
	private Date from;
	private Date to;
	private String country;
	private Key qualification;
	private String classification;
	@Override
	public String toString() {
		return "Education [id=" + id + ", institution=" + institution
				+ ", course=" + course + ", from=" + from + ", to=" + to
				+ ", country=" + country + ", qualification=" + qualification
				+ ", classification=" + classification + "]";
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
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
	public Date getFrom() {
		return from;
	}
	public void setFrom(Date from) {
		this.from = from;
	}
	public Date getTo() {
		return to;
	}
	public void setTo(Date to) {
		this.to = to;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Key getQualification() {
		return qualification;
	}
	public void setQualification(Key qualification) {
		this.qualification = qualification;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
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
