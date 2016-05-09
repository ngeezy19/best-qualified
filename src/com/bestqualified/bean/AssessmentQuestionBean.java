package com.bestqualified.bean;

import java.io.Serializable;
import java.util.Map;

public class AssessmentQuestionBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4689996412452241654L;
	
	private String webkey,question,correctAnswer;
	private Map<String,String> choices;
	@Override
	public String toString() {
		return "AssessmentQuestionBean [webkey=" + webkey + ", question="
				+ question + ", correctAnswer=" + correctAnswer + ", choices="
				+ choices + "]";
	}
	public String getWebkey() {
		return webkey;
	}
	public void setWebkey(String webkey) {
		this.webkey = webkey;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getCorrectAnswer() {
		return correctAnswer;
	}
	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	public Map<String, String> getChoices() {
		return choices;
	}
	public void setChoices(Map<String, String> choices) {
		this.choices = choices;
	}
	
	
	
	
	

}
