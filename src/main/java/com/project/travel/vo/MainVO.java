package com.project.travel.vo;

public class MainVO {
	// 포토 갤러리
	private int Photo_Num;
	private	int Photo_Views;
	// QnA 게시판
	private String QnA_Subject;
	private	int QnA_Views;
	
	// 포토 갤러리
	public int getPhoto_Num() {
		return Photo_Num;
	}
	public void setPhoto_Num(int photo_Num) {
		Photo_Num = photo_Num;
	}

	public int getPhoto_Views() {
		return Photo_Views;
	}
	public void setPhoto_Views(int photo_Views) {
		Photo_Views = photo_Views;
	}
	
	// QnA 게시판
	public String getQnA_Subject() {
		return QnA_Subject;
	}
	public void setQnA_Subject(String qnA_Subject) {
		QnA_Subject = qnA_Subject;
	}
	public int getQnA_Views() {
		return QnA_Views;
	}
	public void setQnA_Views(int qnA_Views) {
		QnA_Views = qnA_Views;
	}
}