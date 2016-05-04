package com.bestqualified.bean;

import java.io.Serializable;
import java.util.List;

public class AssessmentTest implements Serializable {

	private String category, candidateName;
	private int time;
	private List<AssessmentQuestionBean> questions;
	@Override
	public String toString() {
		return "AssessmentTest [category=" + category + ", candidateName="
				+ candidateName + ", time=" + time + ", questions=" + questions
				+ "]";
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCandidateName() {
		return candidateName;
	}
	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public List<AssessmentQuestionBean> getQuestions() {
		return questions;
	}
	public void setQuestions(List<AssessmentQuestionBean> questions) {
		this.questions = questions;
	}
	
	
}
