package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.FestivalDAO;
import com.project.travel.vo.FestivalVO;

@Service
public class FestivalServiceImpl implements FestivalService {

	@Autowired
	FestivalDAO festivalDAO;
	
	//Festival 리스트
	@Override
	public List<FestivalVO> festivalList() {
		return festivalDAO.festivalList();
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
