package com.project.travel.vo;

import java.util.Date;

public class QnACommentVO {
	private int QnA_C_Num;
	private int QnA_Num;
	private String QnA_C_Content;
	private Date QnA_C_Date;
	
	public int getQnA_C_Num() {
		return QnA_C_Num;
	}
	public void setQnA_C_Num(int qnA_C_Num) {
		QnA_C_Num = qnA_C_Num;
	}
	public int getQnA_Num() {
		return QnA_Num;
	}
	public void setQnA_Num(int qnA_Num) {
		QnA_Num = qnA_Num;
	}
	public String getQnA_C_Content() {
		return QnA_C_Content;
	}
	public void setQnA_C_Content(String qnA_C_Content) {
		QnA_C_Content = qnA_C_Content;
	}
	public Date getQnA_C_Date() {
		return QnA_C_Date;
	}
	public void setQnA_C_Date(Date qnA_C_Date) {
		QnA_C_Date = qnA_C_Date;
	}
	@Override
	public String toString() {
		return "QnACommentVO [QnA_C_Num=" + QnA_C_Num + ", QnA_Num=" + QnA_Num + ", QnA_C_Content=" + QnA_C_Content
				+ ", QnA_C_Date=" + QnA_C_Date + "]";
	}
	
	/* 코멘트 VO 카멜 형식
	 * private int qnaCNum; //qna댓글 번호 
	 * private int qnaNum; //qna 넘버 
	 * private String qnaCContent; //qna댓글 내용 
	 * private Date qnaCDate; //qna 날짜
	 */

	
}
