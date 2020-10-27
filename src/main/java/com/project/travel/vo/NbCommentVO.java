package com.project.travel.vo;

import java.util.Date;

public class NbCommentVO {
	private int Nb_C_Num;
	private String M_Id;
	private int Nb_Num;
	private String Nb_C_Content;
	private Date Nb_C_Date;
	
	public int getNb_C_Num() {
		return Nb_C_Num;
	}
	public void setNb_C_Num(int nb_C_Num) {
		Nb_C_Num = nb_C_Num;
	}
	public String getM_Id() {
		return M_Id;
	}
	public void setM_Id(String m_Id) {
		M_Id = m_Id;
	}
	public int getNb_Num() {
		return Nb_Num;
	}
	public void setNb_Num(int nb_Num) {
		Nb_Num = nb_Num;
	}
	public String getNb_C_Content() {
		return Nb_C_Content;
	}
	public void setNb_C_Content(String nb_C_Content) {
		Nb_C_Content = nb_C_Content;
	}
	public Date getNb_C_Date() {
		return Nb_C_Date;
	}
	public void setNb_C_Date(Date nb_C_Date) {
		Nb_C_Date = nb_C_Date;
	}
	
	@Override
	public String toString() {
		return "NbCommentVO [Nb_C_Num=" + Nb_C_Num + ", M_Id=" + M_Id + ", Nb_Num=" + Nb_Num + ", Nb_C_Content=" + Nb_C_Content
				+ ", Nb_C_Date=" + Nb_C_Date + "]";
	}
}