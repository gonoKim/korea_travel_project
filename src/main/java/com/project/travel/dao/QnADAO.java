package com.project.travel.dao;

import java.util.HashMap;
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
	public int QnAWrite(QnAVO qnavo) {
		return sqlSession.insert("QnAWrite",qnavo);
		}
	public QnAVO getQnAView(int qnA_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("qnA_Num",qnA_Num);
		return sqlSession.selectOne("getQnAView",map);
	}

public void viewUpdate(int qnA_Num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("qnA_Num",qnA_Num);
		sqlSession.update("viewUpdate", map);
	}
}
