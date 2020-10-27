package com.project.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.travel.dao.MainDAO;
import com.project.travel.vo.FestivalImgVO;
import com.project.travel.vo.NoticeVO;

@Service
public class MainServiceImpl implements MainService {
	
	@Inject MainDAO dao;
	
	// top 배너에 넣을 이미지 찾기
	@Override
	public List<FestivalImgVO> topBanner() throws Exception {
		return dao.topBanner();
	}
	
	// bottom 배너에 넣을 이미지 찾기
	@Override
	public List<FestivalImgVO> bottomBanner() throws Exception {
		return dao.bottomBanner();
	}
	
	// 공지사항 목록 조회
	@Override
	public List<NoticeVO> nbList() throws Exception {
		return dao.nbList();
	}
}