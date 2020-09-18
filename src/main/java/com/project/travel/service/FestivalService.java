package com.project.travel.service;

import java.util.List;

import com.project.travel.common.festivalSearch;
import com.project.travel.vo.FestivalVO;

public interface FestivalService {
	//Festival 리스트
	List <FestivalVO> festivalList(festivalSearch fSearch , int festivalpage, int festivalrange,  String searchType, String keyword); 
	
	//festival 게시물 개수
	int getFestivalListCnt(festivalSearch fSearch);
	
	// Festival 쓰기
	int festivalwrite(FestivalVO festivalvo);
	
	// Festival 뷰
	FestivalVO festivalView(int f_Num);
	
	// Festival 삭제
	int festivalDelete(FestivalVO festivalvo);
	
	// festival 수정
	int festivalUpdate(FestivalVO festivalvo);
	
	
}
