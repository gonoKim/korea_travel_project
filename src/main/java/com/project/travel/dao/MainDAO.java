package com.project.travel.dao;

import java.util.List;

import com.project.travel.vo.MainVO;

public interface MainDAO{	
	// 메인 배너에 넣을 이미지 찾기
	public List<MainVO> imgBanner() throws Exception;
	
	// 포토갤러리 배너에 넣을 이미지 찾기
	public List<MainVO> photoBanner() throws Exception;
}