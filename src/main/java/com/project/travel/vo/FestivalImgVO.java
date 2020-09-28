package com.project.travel.vo;

import java.util.Date;

public class FestivalImgVO {
private int FILE_NO;	//이미지 넘버
private int F_Num;		//페스티벌 넘버
private String ORG_FILE_NAME;	//파일 원래 이름
private String STORED_FILE_NAME;	//파일 바뀐이름
private int FILE_SIZE;		//파일 사이즈
private Date REGDATE;	//파일 작성일
public int getFILE_NO() {
	return FILE_NO;
}
public void setFILE_NO(int fILE_NO) {
	FILE_NO = fILE_NO;
}
public int getF_Num() {
	return F_Num;
}
public void setF_Num(int f_Num) {
	F_Num = f_Num;
}
public String getORG_FILE_NAME() {
	return ORG_FILE_NAME;
}
public void setORG_FILE_NAME(String oRG_FILE_NAME) {
	ORG_FILE_NAME = oRG_FILE_NAME;
}
public String getSTORED_FILE_NAME() {
	return STORED_FILE_NAME;
}
public void setSTORED_FILE_NAME(String sTORED_FILE_NAME) {
	STORED_FILE_NAME = sTORED_FILE_NAME;
}
public int getFILE_SIZE() {
	return FILE_SIZE;
}
public void setFILE_SIZE(int fILE_SIZE) {
	FILE_SIZE = fILE_SIZE;
}
public Date getREGDATE() {
	return REGDATE;
}
public void setREGDATE(Date rEGDATE) {
	REGDATE = rEGDATE;
}

}
