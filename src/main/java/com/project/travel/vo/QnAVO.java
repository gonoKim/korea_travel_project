package com.project.travel.vo;

import java.util.Date;

public class QnAVO {
	private int QnA_Num; 				//QnA테이블 넘버 
	private String QnA_Write;			//QnA테이블 작성자
	private String QnA_Subject;			//QnA테이블 제목
	private String QnA_Content;			// QnA테이블 내용
	private int QnA_Views;				// QnA테이블 조회수 
	private Date QnA_Date;		 		//QnA테이블 작성일
	
	public int getQnA_Num() {
		return QnA_Num;
	}
	public void setQnA_Num(int qnA_Num) {
		QnA_Num = qnA_Num;
	}
	public String getQnA_Write() {
		return QnA_Write;
	}
	public void setQnA_Write(String qnA_Write) {
		QnA_Write = qnA_Write;
	}
	public String getQnA_Subject() {
		return QnA_Subject;
	}
	public void setQnA_Subject(String qnA_Subject) {
		QnA_Subject = qnA_Subject;
	}
	public String getQnA_Content() {
		return QnA_Content;
	}
	public void setQnA_Content(String qnA_Content) {
		QnA_Content = qnA_Content;
	}
	public int getQnA_Views() {
		return QnA_Views;
	}
	public void setQnA_Views(int qnA_Views) {
		QnA_Views = qnA_Views;
	}
	public Date getQnA_Date() {
		return QnA_Date;
	}
	public void setQnA_Date(Date qnA_Date) {
		QnA_Date = qnA_Date;
	}
	@Override
	public String toString() {
		return "QnAVO [QnA_Num=" + QnA_Num + ", QnA_Write=" + QnA_Write + ", QnA_Subject=" + QnA_Subject
				+ ", QnA_Content=" + QnA_Content + ", QnA_Views=" + QnA_Views + ", QnA_Date=" + QnA_Date + "]";
	}
	
/* 카멜 형식 Vo
	private int qnaNum; // QnA테이블 넘버 
	private String qnaSubject; //QnA테이블 제목
	private String qnaContent; // QnA테이블 내용 
	private String qnaWrite; //QnA테이블 작성자
	private int qnaViews; // QnA테이블 조회수 
	private Date qnaDate; //QnA테이블 작성일
*/
}
