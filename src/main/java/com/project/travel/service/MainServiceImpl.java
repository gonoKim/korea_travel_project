package com.project.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.travel.dao.MainDAO;
import com.project.travel.vo.MainVO;

@Service
public class MainServiceImpl implements MainService {
	
	@Inject MainDAO dao;
	
	// 메인 배너에 넣을 이미지 찾기
	@Override
	public List<MainVO> imgBanner() throws Exception {
		return dao.imgBanner();
	}
	
	// 포토갤러리 배너에 넣을 이미지 찾기
	@Override
	public List<MainVO> photoBanner() throws Exception {
		return dao.photoBanner();
	}
	
	// 공지사항 목록 조회
	@Override
	public List<MainVO> qnaList() throws Exception {
		return dao.qnaList();
	}
}