package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class IndexBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2422564379454959121L;
	
	private List<Article> articles;
	private List<InterestedJob> ijs;
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	public List<InterestedJob> getIjs() {
		return ijs;
	}
	public void setIjs(List<InterestedJob> ijs) {
		this.ijs = ijs;
	}
	@Override
	public String toString() {
		return "IndexBean [articles=" + articles + ", ijs=" + ijs + "]";
	}
	
	

}
