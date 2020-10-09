package com.project.travel.vo;

public class MainVO {
	// 배너 이미지
	private int F_Num;
	private String STORED_FILE_NAME;
	// 공지사항 게시판
	private int NB_Num;
	private String NB_Subject;
	private	int NB_Views;
	
	// 배너 이미지
	public int getF_Num() {
		return F_Num;
	}
	public void setF_Num(int f_Num) {
		F_Num = f_Num;
	}
	public String getSTORED_FILE_NAME() {
		return STORED_FILE_NAME;
	}
	public void setSTORED_FILE_NAME(String sTORED_FILE_NAME) {
		STORED_FILE_NAME = sTORED_FILE_NAME;
	}

	// 공지사항 게시판
	public int getNB_Num() {
		return NB_Num;
	}
	public void setNB_Num(int nB_Num) {
		NB_Num = nB_Num;
	}
	public String getNB_Subject() {
		return NB_Subject;
	}
	public void setNB_Subject(String nB_Subject) {
		NB_Subject = nB_Subject;
	}
	public int getNB_Views() {
		return NB_Views;
	}
	public void setNB_Views(int nB_Views) {
		NB_Views = nB_Views;
	}
}