package com.project.travel.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.FestivalImgVO;
import com.project.travel.vo.NoticeVO;

@Repository
public class MainDAOImpl implements MainDAO {
	
	@Inject SqlSession sqlSession;
	
	// top 배너에 넣을 이미지 찾기
	@Override
	public List<FestivalImgVO> topBanner() throws Exception {
		return sqlSession.selectList("MainMapper.topBanner");
	}
	
	// bottom 배너에 넣을 이미지 찾기
	@Override
	public List<FestivalImgVO> bottomBanner() throws Exception {
		return sqlSession.selectList("MainMapper.bottomBanner");
	}
	
	// 공지사항 목록 조회
	@Override
	public List<NoticeVO> nbList() throws Exception {
		return sqlSession.selectList("MainMapper.nbList");
	}
}