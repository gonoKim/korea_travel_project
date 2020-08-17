package com.project.travel.vo;

import java.util.Date;

public class QnAVO {
	private int QnA_Num; //QnA테이블 넘버
	private String QnA_Subject; //QnA테이블 제목
	private	String QnA_Content; //QnA테이블 내용
	private	String QnA_Write;	//QnA테이블 작성자
	private	int QnA_Views;		//QnA테이블 조회수
	private Date QnA_Date;		//QnA테이블 작성일
	
	public int getQnA_Num() {
		return QnA_Num;
	}
	public void setQnA_Num(int QnA_Num) {
		this.QnA_Num = QnA_Num;
	}
	public String getQnA_Subject() {
		return QnA_Subject;
	}
	public void setQnA_Subject(String QnA_Subject) {
		this.QnA_Subject = QnA_Subject;
	}
	public String getQnA_Content() {
		return QnA_Content;
	}
	public void setQnA_Content(String QnA_Content) {
		this.QnA_Content = QnA_Content;
	}
	public String getQnA_Write() {
		return QnA_Write;
	}
	public void setQnA_Write(String QnA_Write) {
		this.QnA_Write = QnA_Write;
	}
	public int getQnA_Views() {
		return QnA_Views;
	}
	public void setQnA_Views(int QnA_Views) {
		this.QnA_Views = QnA_Views;
	}
	public Date getQnA_Date() {
		return QnA_Date;
	}
	public void setQnA_Date(Date QnA_Date) {
		this.QnA_Date = QnA_Date;
	}
	@Override
	public String toString() {
		return "QnAVO [QnA_Num=" + QnA_Num + ", QnA_Subject=" + QnA_Subject + ", QnA_Content=" + QnA_Content
				+ ", QnA_Write=" + QnA_Write + ", QnA_Views=" + QnA_Views + ", QnA_Date=" + QnA_Date + "]";
	}
	

}
