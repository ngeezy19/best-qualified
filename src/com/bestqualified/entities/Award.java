package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

public class Award implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7614187793473460791L;

	private Key id;
	private String name, month, year, safeKey;
	private String Description;

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
		Award other = (Award) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Award [id=" + id + ", name=" + name + ", month=" + month
				+ ", year=" + year + ", safeKey=" + safeKey + ", Description="
				+ Description + "]";
	}

	public Key getId() {
		return id;
	}

	public void setId(Key id) {
		this.id = id;
		this.safeKey = KeyFactory.keyToString(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSafeKey() {
		return safeKey;
	}

	public void setSafeKey(String safeKey) {
		this.safeKey = safeKey;
	}

	public Award() {
		this.id = GeneralController.ds.allocateIds(Award.class.getSimpleName(),
				1).getStart();
		this.safeKey = KeyFactory.keyToString(id);
	}

}
