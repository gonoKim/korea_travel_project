package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.common.festivalSearch;
import com.project.travel.dao.FestivalDAO;
import com.project.travel.vo.FestivalVO;

@Service
public class FestivalServiceImpl implements FestivalService {

	@Autowired
	FestivalDAO festivalDAO;
	
	//Festival 리스트
	@Override
	public List<FestivalVO> festivalList(festivalSearch fSearch, int festivalpage, int festivalrange, String searchType, String keyword) {
		/* festivalSearch fSearch = new festivalSearch(); */

		//전체 게시글 수
		int festivallistCnt = festivalDAO.getFestivalListCnt(fSearch);
		// 페이징 로직
		fSearch.pageInfo(festivalpage, festivalrange, festivallistCnt);
		fSearch.setSearchType(searchType);
		fSearch.setKeyword(keyword);
		return festivalDAO.festivalList(fSearch);
	}

	//Festival 게시물 개수
	@Override
	public int getFestivalListCnt(festivalSearch fSearch) {
		return festivalDAO.getFestivalListCnt(fSearch);
	}
	
	//Festival 쓰기
	@Override
	public int festivalwrite(FestivalVO festivalvo) {
		return festivalDAO.festivalwrite(festivalvo);
	}

	//Festival 뷰
	@Override
	public FestivalVO festivalView(int f_Num) {
		return festivalDAO.festivalView(f_Num);
	}
	
	//Festival 삭제
	@Override
	public int festivalDelete(FestivalVO festivalvo) {
		return festivalDAO.festivalDelete(festivalvo);
	}

	//Festival 업데이트
	@Override
	public int festivalUpdate(FestivalVO festivalvo) {
		return festivalDAO.festivalUpdate(festivalvo);
	}
	
	
	

}
