package com.bestqualified.bean;

import java.io.Serializable;

public class BasicProjectView implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -722530726176122452L;
	private String webkey;
	private String name;
	@Override
	public String toString() {
		return "BasicProjectView [webkey=" + webkey + ", name=" + name + "]";
	}
	public String getWebkey() {
		return webkey;
	}
	public void setWebkey(String webkey) {
		this.webkey = webkey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	

}
