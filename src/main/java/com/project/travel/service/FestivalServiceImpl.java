package com.project.travel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.travel.common.festivalSearch;
import com.project.travel.dao.FestivalDAO;
import com.project.travel.utility.FileUtils;
import com.project.travel.vo.FestivalVO;
import com.project.travel.vo.fSearchVO;

@Service
public class FestivalServiceImpl implements FestivalService {
	@Resource(name="fileUtils")
	private FileUtils fileUtils;

	@Autowired
	FestivalDAO festivalDAO;
	
	//Festival 리스트
	@Override
	public fSearchVO festivalList(int festivalpage, int festivalrange, String searchType, String keyword) {
		/* festivalSearch fSearch = new festivalSearch(); */
		festivalSearch fSearch = new festivalSearch();
		fSearch.setSearchType(searchType);
		fSearch.setKeyword(keyword);
		
		
		//전체 게시글 수
		int festivallistCnt = festivalDAO.getFestivalListCnt(fSearch);
		// 페이징 로직
		fSearch.pageInfo(festivalpage, festivalrange, festivallistCnt);

		List<FestivalVO> fesivalVO= festivalDAO.festivalList(fSearch);
		fSearchVO fSearchvo =new fSearchVO();
		fSearchvo.setfSearch(fSearch);
		fSearchvo.setfList(fesivalVO);
		return fSearchvo;
		
	}

	//Festival 게시물 개수
	@Override
	public int getFestivalListCnt(festivalSearch fSearch) {
		return festivalDAO.getFestivalListCnt(fSearch);
	}
	

	//Festival 업로드
	@Override
	public void write(FestivalVO festivalvo, MultipartHttpServletRequest mpRequest) throws Exception {
		festivalDAO.write(festivalvo); 
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(festivalvo, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			festivalDAO.insertFile(list.get(i)); 
		}
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

	@Override
	public fSearchVO festivalPageList(int festivalpage, int festivalrange, String searchType, String keyword) {
		festivalSearch fSearch = new festivalSearch();
		fSearch.setSearchType(searchType);
		fSearch.setKeyword(keyword);
		
		
		//전체 게시글 수
		int festivallistCnt = festivalDAO.getFestivalListCnt(fSearch);
		// 페이징 로직
		fSearch.pageInfo(festivalpage, festivalrange, festivallistCnt);

		List<FestivalVO> fesivalVO= festivalDAO.festivalList(fSearch);
		fSearchVO fSearchvo =new fSearchVO();
		fSearchvo.setfSearch(fSearch);
		fSearchvo.setfList(fesivalVO);
		return fSearchvo;
	}
}
