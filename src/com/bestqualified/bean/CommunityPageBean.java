package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class CommunityPageBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1126668110617153893L;
	private Map<String, String> communities;
	private List<Article> posts;
	
	@Override
	public String toString() {
		return "CommunityPageBean [communities=" + communities + ", posts="
				+ posts + "]";
	}

	public Map<String, String> getCommunities() {
		return communities;
	}

	public void setCommunities(Map<String, String> communities) {
		this.communities = communities;
	}

	public List<Article> getPosts() {
		return posts;
	}

	public void setPosts(List<Article> posts) {
		this.posts = posts;
	}

	
}
