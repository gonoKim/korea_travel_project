package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.FestivalVO;

public interface FestivalService {
	List <FestivalVO> festivalList();
	int festivalwrite(FestivalVO festivalvo);
	FestivalVO festivalView(int f_Num);
}
