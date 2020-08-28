package com.project.travel.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.MainVO;

@Repository
public class MainDAOImpl implements MainDAO {
	
	@Inject SqlSession sqlSession;
	
	// 배너에 넣을 이미지 찾기
	@Override
	public List<MainVO> imgBanner() throws Exception {
		return sqlSession.selectList("MainMapper.imgBanner");
	}
}