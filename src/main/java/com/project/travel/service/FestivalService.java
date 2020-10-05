package com.project.travel.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.travel.common.festivalSearch;
import com.project.travel.vo.FestivalImgVO;
import com.project.travel.vo.FestivalVO;
import com.project.travel.vo.fSearchVO;

public interface FestivalService {
	//Festival 리스트 and 페이지
	fSearchVO festivalList(int festivalpage, int festivalrange,  String searchType, String keyword); 
	
	//festival 게시물 개수
	int getFestivalListCnt(festivalSearch fSearch);
	
	// Festival 쓰기
	public void write(FestivalVO festivalvo, MultipartHttpServletRequest mpRequest) throws Exception;
	
	// Festival 뷰
	FestivalVO festivalView(int f_Num);
	
	// Festival 삭제
	int festivalDelete(FestivalVO festivalvo);
	
	// festival 수정
	int festivalUpdate(FestivalVO festivalvo);
	
	//festival 페이지 
	/*
	 * fSearchVO festivalPageList(int festivalpage, int festivalrange, String
	 * searchType, String keyword);
	 */
	
	fSearchVO festivalPage(int place_Code);
	
	/* List<FestivalImgVO> festivalImg(int place_Code); */
}
