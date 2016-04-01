package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;

import com.google.appengine.api.datastore.Key;

public class Certification implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7616426998113129499L;
	
	private Key id;
	private String name;
	private Date date;
	@Override
	public String toString() {
		return "Certification [id=" + id + ", name=" + name + ", date=" + date
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
		Certification other = (Certification) obj;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
