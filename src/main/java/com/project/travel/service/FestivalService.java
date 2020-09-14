package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.FestivalVO;

public interface FestivalService {
	//Festival 리스트
	List <FestivalVO> festivalList(); 
	
	// Festival 쓰기
	int festivalwrite(FestivalVO festivalvo);
	
	// Festival 뷰
	FestivalVO festivalView(int f_Num);
	
	// Festival 삭제
	int festivalDelete(FestivalVO festivalvo);
}
