package com.project.travel.vo;

import java.util.Date;

public class QnAVO {
	private int qnaNum; //QnA테이블 넘버
	private String qnaSubject; //QnA테이블 제목
	private	String qnaContent; //QnA테이블 내용
	private	String qnaWrite;	//QnA테이블 작성자
	private	int qnaViews;		//QnA테이블 조회수
	private Date qnaDate;		//QnA테이블 작성일
	
	public int getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getQnaSubject() {
		return qnaSubject;
	}
	public void setQnaSubject(String qnaSubject) {
		this.qnaSubject = qnaSubject;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public String getQnaWrite() {
		return qnaWrite;
	}
	public void setQnaWrite(String qnaWrite) {
		this.qnaWrite = qnaWrite;
	}
	public int getQnaViews() {
		return qnaViews;
	}
	public void setQnaViews(int qnaViews) {
		this.qnaViews = qnaViews;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	@Override
	public String toString() {
		return "QnAVO [qnaContent=" + qnaContent + ", qnaDate=" + qnaDate + ", qnaNum=" + qnaNum + ", qnaSubject="
				+ qnaSubject + ", qnaViews=" + qnaViews + ", qnaWrite=" + qnaWrite + "]";
	}

}
