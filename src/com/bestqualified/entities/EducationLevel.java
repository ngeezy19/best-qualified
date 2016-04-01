package com.bestqualified.entities;

import java.io.Serializable;

import com.google.appengine.api.datastore.Key;

public class EducationLevel implements Serializable {

	/**
	 * 
	 */
	//e.g masters, bsc
	private static final long serialVersionUID = 217286966947098914L;
	private Key id;
	private String name;
	private String abbr;
	@Override
	public String toString() {
		return "EducationLevel [id=" + id + ", name=" + name + ", abbr=" + abbr
				+ "]";
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
		EducationLevel other = (EducationLevel) obj;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAbbr() {
		return abbr;
	}
	public void setAbbr(String abbr) {
		this.abbr = abbr;
	}
	
	

}
