package com.bestqualified.entities;

import java.io.Serializable;

import com.google.appengine.api.datastore.Key;

public class JobType implements Serializable {

	/**
	 * 
	 */
	//e.g freelance,full-time
	private static final long serialVersionUID = -7927014839516126514L;

	private Key id;
	private String name;
	@Override
	public String toString() {
		return "JobType [id=" + id + ", name=" + name + "]";
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
		JobType other = (JobType) obj;
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
	
	
}
