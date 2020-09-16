package com.project.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.MainVO;

@Repository
public class MainDAOImpl implements MainDAO {
	
	@Autowired SqlSession sqlSession;
	
	// 메인 배너에 넣을 이미지 찾기
	@Override
	public List<MainVO> imgBanner() throws Exception {
		return sqlSession.selectList("MainMapper.imgBanner");
	}
	
	// 포토갤러리 배너에 넣을 이미지 찾기
	@Override
	public List<MainVO> photoBanner() throws Exception {
		return sqlSession.selectList("MainMapper.photoBanner");
	}
	
	// 공지사항 목록 조회
	@Override
	public List<MainVO> qnaList() throws Exception {
		return sqlSession.selectList("MainMapper.qnaList");
	}
}