package com.project.travel.dao;

import java.util.HashMap;
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

	public int festivalwrite(FestivalVO festivalvo) {
		return sqlSession.insert("festivalwrite", festivalvo);
	}

	public FestivalVO festivalView(int f_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("f_Num", f_Num);
		return sqlSession.selectOne("festivalView", map);
	}
}
