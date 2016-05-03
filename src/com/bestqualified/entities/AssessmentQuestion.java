package com.bestqualified.entities;

import java.io.Serializable;
import java.util.List;

import com.google.appengine.api.datastore.EmbeddedEntity;
import com.google.appengine.api.datastore.Text;

public class AssessmentQuestion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3193577452991478824L;
	
	private String category, correctAnswer;
	private Text body,explanation;
	private List<EmbeddedEntity> alternatives;
	
	@Override
	public String toString() {
		return "AssessmentQuestion [category=" + category + ", correctAnswer="
				+ correctAnswer + ", body=" + body + ", explanation="
				+ explanation + ", alternatives=" + alternatives + "]";
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
	}
	
}
