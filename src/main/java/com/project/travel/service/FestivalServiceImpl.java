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
	
	@Override
	public List<FestivalVO> festivalList() {
		return festivalDAO.festivalList();
	}

	@Override
	public int festivalwrite(FestivalVO festivalvo) {
		return festivalDAO.festivalwrite(festivalvo);
	}

	@Override
	public FestivalVO festivalView(int f_Num) {
		return festivalDAO.festivalView(f_Num);
	}

}
