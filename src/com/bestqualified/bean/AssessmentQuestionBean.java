package com.bestqualified.bean;

import java.io.Serializable;
import java.util.Map;

public class AssessmentQuestionBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4689996412452241654L;
	
	private String webkey,body,answer;
	private Map<String,String> alternatives;
	public String getWebkey() {
		return webkey;
	}
	public void setWebkey(String webkey) {
		this.webkey = webkey;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Map<String, String> getAlternatives() {
		return alternatives;
	}
	public void setAlternatives(Map<String, String> alternatives) {
		this.alternatives = alternatives;
	}
	
	@Override
	public String toString() {
		return "AssessmentQuestionBean [webkey=" + webkey + ", body=" + body
				+ ", answer=" + answer + ", alternatives=" + alternatives + "]";
	}
	
	

}
