package com.bestqualified.bean;

import java.io.Serializable;

public class ProjectView implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7893125981623058672L;
	
	private String name;
	private int view;
	private String webKey;
	
	
	public String getWebKey() {
		return webKey;
	}
	public void setWebKey(String webKey) {
		this.webKey = webKey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	@Override
	public String toString() {
		return "ProjectView [name=" + name + ", view=" + view + "]";
	}
	
	

}
