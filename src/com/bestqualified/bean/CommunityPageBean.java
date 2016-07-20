package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class CommunityPageBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1126668110617153893L;
<<<<<<< HEAD
	private Map<String, String> communities;
=======
	private List<CommunityBean> communities;
>>>>>>> 6b2c023d27b9ee6075b71d2c7641aa0f281a7163
	private List<Article> posts;

	@Override
	public String toString() {
		return "CommunityPageBean [communities=" + communities + ", posts="
				+ posts + "]";
	}

	public List<CommunityBean> getCommunities() {
		return communities;
	}

	public void setCommunities(List<CommunityBean> communities) {
		this.communities = communities;
	}

	public List<Article> getPosts() {
		return posts;
	}

	public void setPosts(List<Article> posts) {
		this.posts = posts;
	}

}
