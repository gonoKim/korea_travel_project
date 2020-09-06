package com.project.travel.vo;

import java.util.Date;

public class PhotoBoardVO {
	private int Photo_Num; //Photo테이블 넘버
	private String Photo_Subject; //Photo테이블 제목
	private	String Photo_Content; //Photo테이블 내용
	private	int Photo_Views;		//Photo테이블 조회수
	private Date Photo_Date;		//Photo테이블 작성일

	public int getPhoto_Num() {
		return Photo_Num;
	}
	public void setPhoto_Num(int photo_Num) {
		Photo_Num = photo_Num;
	}
	public String getPhoto_Subject() {
		return Photo_Subject;
	}
	public void setPhoto_Subject(String photo_Subject) {
		Photo_Subject = photo_Subject;
	}
	public String getPhoto_Content() {
		return Photo_Content;
	}
	public void setPhoto_Content(String photo_Content) {
		Photo_Content = photo_Content;
	}
	public int getPhoto_Views() {
		return Photo_Views;
	}
	public void setPhoto_Views(int photo_Views) {
		Photo_Views = photo_Views;
	}
	public Date getPhoto_Date() {
		return Photo_Date;
	}
	public void setPhoto_Date(Date photo_Date) {
		Photo_Date = photo_Date;
	}
	
	@Override
	public String toString() {
		return "PhotoBoardVO [Photo_Num=" + Photo_Num + ", Photo_Subject=" + Photo_Subject + ", Photo_Content="
				+ Photo_Content + ", Photo_Views=" + Photo_Views + ", Photo_Date=" + Photo_Date + "]";
	}

}
