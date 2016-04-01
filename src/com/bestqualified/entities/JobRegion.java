package com.bestqualified.entities;

import java.io.Serializable;

import com.google.appengine.api.datastore.Key;

public class JobRegion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9013794048997959369L;
	
	private String state,country;
	private Key id;

	

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
		JobRegion other = (JobRegion) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public Key getId() {
		return id;
	}

	public void setId(Key id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "JobRegion [state=" + state + ", country=" + country + ", id="
				+ id + "]";
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
	
	

}
