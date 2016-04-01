package com.bestqualified.entities;

import java.io.Serializable;

import com.google.appengine.api.datastore.Key;

public class CareerSummary implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1378082990351299751L;
	
	private Key id;
	private Key jobType;
	private Key specialization;
	private int yearsOfExperience;
	@Override
	public String toString() {
		return "CareerSummary [id=" + id + ", jobType=" + jobType
				+ ", specialization=" + specialization + ", yearsOfExperience="
				+ yearsOfExperience + "]";
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
	}
	public Key getJobType() {
		return jobType;
	}
	public void setJobType(Key jobType) {
		this.jobType = jobType;
	}
	public Key getSpecialization() {
		return specialization;
	}
	public void setSpecialization(Key specialization) {
		this.specialization = specialization;
	}
	public int getYearsOfExperience() {
		return yearsOfExperience;
	}
	public void setYearsOfExperience(int yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
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
		CareerSummary other = (CareerSummary) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	

}
