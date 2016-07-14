package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class Community implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4660639606849347181L;
	private Key id;
	private String name;
	private Text longDesc;
	private boolean commPublic;
	private List<Key> members;
	private BlobKey image;
	private Date dateCreated;
	private Key owner;
	private List<Key> topics;
	private Text shortDesc;
	private BlobKey wallpaper;
	@Override
	public String toString() {
		return "Community [id=" + id + ", name=" + name + ", longDesc="
				+ longDesc + ", commPublic=" + commPublic + ", members="
				+ members + ", image=" + image + ", dateCreated=" + dateCreated
				+ ", owner=" + owner + ", topics=" + topics + ", shortDesc="
				+ shortDesc + ", wallpaper=" + wallpaper + "]";
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
	public Text getLongDesc() {
		return longDesc;
	}
	public void setLongDesc(Text longDesc) {
		this.longDesc = longDesc;
	}
	public boolean isCommPublic() {
		return commPublic;
	}
	public void setCommPublic(boolean commPublic) {
		this.commPublic = commPublic;
	}
	public List<Key> getMembers() {
		return members;
	}
	public void setMembers(List<Key> members) {
		this.members = members;
	}
	public BlobKey getImage() {
		return image;
	}
	public void setImage(BlobKey image) {
		this.image = image;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	public Key getOwner() {
		return owner;
	}
	public void setOwner(Key owner) {
		this.owner = owner;
	}
	public List<Key> getTopics() {
		return topics;
	}
	public void setTopics(List<Key> topics) {
		this.topics = topics;
	}
	public Text getShortDesc() {
		return shortDesc;
	}
	public void setShortDesc(Text shortDesc) {
		this.shortDesc = shortDesc;
	}
	public BlobKey getWallpaper() {
		return wallpaper;
	}
	public void setWallpaper(BlobKey wallpaper) {
		this.wallpaper = wallpaper;
	}
	public Community() {
		this.id = GeneralController.ds.allocateIds(
				Community.class.getSimpleName(), 1).getStart();
	}
	
	
	

}
