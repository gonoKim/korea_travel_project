package com.project.travel.vo;

import java.util.Date;

public class FestivalVO {
	private int F_Num; //축제 넘버
	private	String F_Subject; //축제 제목
	private String F_Content; //축제 내용
	private	String F_Place;	//축제 장소
	private	String F_Address;	//축제 주소
	private	Date F_Date;	//축제 일시
	
	public int getF_Num() {
		return F_Num;
	}
	public void setF_Num(int f_Num) {
		F_Num = f_Num;
	}
	public String getF_Subject() {
		return F_Subject;
	}
	public void setF_Subject(String f_Subject) {
		F_Subject = f_Subject;
	}
	public String getF_Content() {
		return F_Content;
	}
	public void setF_Content(String f_Content) {
		F_Content = f_Content;
	}
	public String getF_Place() {
		return F_Place;
	}
	public void setF_Place(String f_Place) {
		F_Place = f_Place;
	}
	public String getF_Address() {
		return F_Address;
	}
	public void setF_Address(String f_Address) {
		F_Address = f_Address;
	}
	public Date getF_Date() {
		return F_Date;
	}
	public void setF_Date(Date f_Date) {
		F_Date = f_Date;
	}
}
