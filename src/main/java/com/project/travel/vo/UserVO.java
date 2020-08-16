package com.project.travel.vo;

import java.util.Date;

public class UserVO {

	private String M_Id;
	private String M_Pw;
	private String M_Fname;
	private String M_Lname;
	private String M_Phone;
	private int M_Year;
	private int M_Month;
	private int M_Day;
	private Date M_Date;
	private int M_Grade;
	
	public String getUserId() {
		return M_Id;
	}
	public void setUserId(String M_Id) {
		this.M_Id = M_Id;
	}
	
	public String getUserPw() {
		return M_Pw;
	}
	public void setUserPw(String M_Pw) {
		this.M_Pw = M_Pw;
	}
	
	public String getUserFName() {
		return M_Fname;
	}
	public void setUserFName(String M_Fname) {
		this.M_Fname = M_Fname;
	}
	
	public String getUserLName() {
		return M_Lname;
	}
	public void setUserLName(String M_Lname) {
		this.M_Lname = M_Lname;
	}
	
	public String getUserPhone() {
		return M_Phone;
	}
	public void setUserPhone(String M_Phone) {
		this.M_Phone = M_Phone;
	}
	
	public int getUserYear() {
		return M_Year;
	}
	public void setUserYear(int M_Year) {
		this.M_Year = M_Year;
	}
	
	public int getUserMonth() {
		return M_Month;
	}
	public void setUserMonth(int M_Month) {
		this.M_Month = M_Month;
	}
	
	public int getUserDay() {
		return M_Day;
	}
	public void setUserDay(int M_Day) {
		this.M_Day = M_Day;
	}
	
	public Date getUserDate() {
		return M_Date;
	}
	public void setUserDate(Date M_Date) {
		this.M_Date = M_Date;
	}
	
	public int getUserGrade() {
		return M_Grade;
	}
	public void setUserGrade(int M_Grade) {
		this.M_Grade = M_Grade;
	}
	
	@Override
	public String toString() {		
		return "UserVO [M_Id=" + M_Id + ", M_Pw=" + M_Pw + ", M_Fname=" + M_Fname + ", M_Lname=" + M_Lname +
				", M_Phone=" + M_Phone + ", M_Year=" + M_Year + ", M_Month" + M_Month + ", M_Day" + M_Day +
				", M_Date" + M_Date + ", M_Grade" + M_Grade + "]";
	}
}