package com.bestqualified.bean;

import java.io.Serializable;

public class CorrectionBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1761966552076189994L;
	private String explanation,webkey,answer;
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getWebkey() {
		return webkey;
	}
	public void setWebkey(String webkey) {
		this.webkey = webkey;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "CorrectionBean [explanation=" + explanation + ", webkey="
				+ webkey + ", answer=" + answer + "]";
	}
	
	
}
