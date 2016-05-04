package com.bestqualified.entities;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import com.bestqualified.controllers.GeneralController;
import com.google.appengine.api.datastore.EmbeddedEntity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Text;

public class AssessmentQuestion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3193577452991478824L;
	
	private Key id;
	private String category, correctAnswer,webKey;
	private Text body,explanation;
	private List<EmbeddedEntity> alternatives;
	
	
	
	
	public AssessmentQuestion() {
		this.id = GeneralController.ds.allocateIds(AssessmentQuestion.class.getSimpleName(), 1).getEnd();
		webKey = KeyFactory.keyToString(id);
	}
	@Override
	public String toString() {
		return "AssessmentQuestion [category=" + category + ", correctAnswer="
				+ correctAnswer + ", body=" + body + ", explanation="
				+ explanation + ", alternatives=" + alternatives + "]";
	}
	public Key getId() {
		return id;
	}
	public void setId(Key id) {
		this.id = id;
		webKey = KeyFactory.keyToString(id);
	}
	public String getWebKey() {
		return webKey;
	}
	public void setWebKey(String webKey) {
		this.webKey = webKey;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCorrectAnswer() {
		return correctAnswer;
	}
	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	public Text getBody() {
		return body;
	}
	public void setBody(Text body) {
		this.body = body;
	}
	public Text getExplanation() {
		return explanation;
	}
	public void setExplanation(Text explanation) {
		this.explanation = explanation;
	}
	public List<EmbeddedEntity> getAlternatives() {
		return alternatives;
	}
	public void setAlternatives(List<EmbeddedEntity> alternatives) {
		this.alternatives = alternatives;
		Collections.shuffle(this.alternatives);
		this.correctAnswer = retrieveCorrectAnswer(alternatives);
	}
	
	private String retrieveCorrectAnswer(List<EmbeddedEntity> li) {
		String ans = null;
		for(EmbeddedEntity e: li) {
			Boolean c = (Boolean) e.getProperty("correct");
			if(c) {
				ans = (String) e.getProperty("text");
			}
		}
		return ans;
	}
	
}
