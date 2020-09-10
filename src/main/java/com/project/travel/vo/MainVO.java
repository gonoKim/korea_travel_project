package com.project.travel.vo;

public class MainVO {
	// 포토 갤러리
	private int Photo_Num;
	private	int Photo_Views;
	// 공지사항 게시판
	private int NB_Num;
	private String NB_Subject;
	private	int NB_Views;
	
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