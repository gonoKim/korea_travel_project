package com.project.travel.vo;

import java.util.List;

import com.project.travel.common.festivalSearch;

public class fSearchVO {
	private festivalSearch fSearch;
	private List<FestivalVO> fList;
	private List<FestivalImgVO> fImg;
	public festivalSearch getfSearch() {
		return fSearch;
	}
	public void setfSearch(festivalSearch fSearch) {
		this.fSearch = fSearch;
	}
	public List<FestivalVO> getfList() {
		return fList;
	}
	public void setfList(List<FestivalVO> fList) {
		this.fList = fList;
	}
	public List<FestivalImgVO> getfImg() {
		return fImg;
	}
	public void setfImg(List<FestivalImgVO> fImg) {
		this.fImg = fImg;
	}

	
}
