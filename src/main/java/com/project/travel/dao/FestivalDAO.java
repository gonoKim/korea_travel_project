package com.project.travel.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.FestivalVO;

@Repository
public class FestivalDAO {

	@Autowired
	public SqlSession sqlSession;

	public List<FestivalVO> festivalList(){
		return sqlSession.selectList("festivalList");
	}
}
