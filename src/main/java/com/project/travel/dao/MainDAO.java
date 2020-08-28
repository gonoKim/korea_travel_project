package com.project.travel.dao;

import java.util.List;

import com.project.travel.vo.MainVO;

public interface MainDAO{	
	// 배너에 넣을 이미지 찾기
	public List<MainVO> imgBanner() throws Exception;
}