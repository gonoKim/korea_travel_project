package com.project.travel.vo;

import java.util.Date;

public class QnACommentVO {
	private int	qnaCNum; //qna댓글 번호
	private int qnaNum;	//qna 넘버
	private String qnaCContent;	//qna댓글 내용
	private	Date qnaCDate;	//qna 날짜
	public int getQnaCNum() {
		return qnaCNum;
	}
	public void setQnaCNum(int qnaCNum) {
		this.qnaCNum = qnaCNum;
	}
	public int getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getQnaCContent() {
		return qnaCContent;
	}
	public void setQnaCContent(String qnaCContent) {
		this.qnaCContent = qnaCContent;
	}
	public Date getQnaCDate() {
		return qnaCDate;
	}
	public void setQnaCDate(Date qnaCDate) {
		this.qnaCDate = qnaCDate;
	}
}
