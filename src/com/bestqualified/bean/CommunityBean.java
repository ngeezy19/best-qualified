package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.bestqualified.entities.ReadingList;
import com.google.appengine.api.datastore.Key;

public class CommunityBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9129909997718509114L;
	
	private String currentDate;
	private String wallpaper;
	private String image;
	private String name;
	private String shortDesc;
	private String longDesc;
	private Map<String, String> topics;
	private String webSafeKey;
	private List<Article> post;
	private List<Key> members;
	@Override
	public String toString() {
		return "CommunityBean [currentDate=" + currentDate + ", wallpaper="
				+ wallpaper + ", image=" + image + ", name=" + name
				+ ", shortDesc=" + shortDesc + ", longDesc=" + longDesc
				+ ", topics=" + topics + ", webSafeKey=" + webSafeKey
				+ ", post=" + post + ", members=" + members + "]";
	}
	public String getCurrentDate() {
		return currentDate;
	}
	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShortDesc() {
		return shortDesc;
	}
	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}
	public String getLongDesc() {
		return longDesc;
	}
	public void setLongDesc(String longDesc) {
		this.longDesc = longDesc;
	}
	public Map<String, String> getTopics() {
		return topics;
	}
	public void setTopics(Map<String, String> topics) {
		this.topics = topics;
	}
	public List<Article> getPost() {
		return post;
	}
	public void setPost(List<Article> post) {
		this.post = post;
	}
	public String getWebSafeKey() {
		return webSafeKey;
	}
	public void setWebSafeKey(String webSafeKey) {
		this.webSafeKey = webSafeKey;
	}
	public String getWallpaper() {
		return wallpaper;
	}
	public void setWallpaper(String wallpaper) {
		this.wallpaper = wallpaper;
	}
	public List<Key> getMembers() {
		return members;
	}
	public void setMembers(List<Key> members) {
		this.members = members;
	}
	
	
	

}
