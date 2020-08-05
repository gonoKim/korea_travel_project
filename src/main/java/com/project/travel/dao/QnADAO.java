package com.project.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.QnAVO;

@Repository
public class QnADAO {

	@Autowired
	public SqlSession sqlSession;
	
	public List<QnAVO> getQnAList() {
		return sqlSession.selectList("getQnAList");
	}

}
