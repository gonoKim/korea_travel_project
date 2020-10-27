package com.project.travel.vo;

import java.util.Date;

public class QnAVO {
	private int QnA_Num; 
	private String M_Id;
	private String QnA_Subject;
	private String QnA_Content;
	private int QnA_Views; 
	private Date QnA_Date;
	
	public int getQnA_Num() {
		return QnA_Num;
	}
	public void setQnA_Num(int qnA_Num) {
		QnA_Num = qnA_Num;
	}
	public String getM_Id() {
		return M_Id;
	}
	public void setM_Id(String m_Id) {
		M_Id = m_Id;
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
		return "QnAVO [QnA_Num=" + QnA_Num + ", M_Id=" + M_Id + ", QnA_Subject=" + QnA_Subject
				+ ", QnA_Content=" + QnA_Content + ", QnA_Views=" + QnA_Views + ", QnA_Date=" + QnA_Date + "]";
	}
}