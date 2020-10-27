package com.project.travel.vo;

import java.util.Date;

public class NoticeVO {
	private int NB_Num; 
	private String M_Id;
	private String NB_Subject; 
	private	String NB_Content;
	private	int NB_Views;		
	private Date NB_Date;
	private String M_Grade;
	
	public int getNB_Num() {
		return NB_Num;
	}
	public void setNB_Num(int nB_Num) {
		NB_Num = nB_Num;
	}
	public String getM_Id() {
		return M_Id;
	}
	public void setM_Id(String m_Id) {
		M_Id = m_Id;
	}
	public String getNB_Subject() {
		return NB_Subject;
	}
	public void setNB_Subject(String nB_Subject) {
		NB_Subject = nB_Subject;
	}
	public String getNB_Content() {
		return NB_Content;
	}
	public void setNB_Content(String nB_Content) {
		NB_Content = nB_Content;
	}
	public int getNB_Views() {
		return NB_Views;
	}
	public void setNB_Views(int nB_Views) {
		NB_Views = nB_Views;
	}
	public Date getNB_Date() {
		return NB_Date;
	}
	public void setNB_Date(Date nB_Date) {
		NB_Date = nB_Date;
	}
	public String getM_Grade() {
		return M_Grade;
	}
	public void setM_Grade(String m_Grade) {
		M_Grade = m_Grade;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [NB_Num=" + NB_Num + ", M_Id=" + M_Id + ", NB_Subject=" + NB_Subject + ", NB_Content=" + NB_Content
				+ ", NB_Views=" + NB_Views + ", NB_Date=" + NB_Date + ", M_Grade=" + M_Grade +"]";
	}
}