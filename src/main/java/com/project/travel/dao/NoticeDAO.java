package com.project.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.NoticeVO;

@Repository
public class NoticeDAO {
	
	@Autowired
	public SqlSession sqlSession;
	
	public List<NoticeVO> getNoticeList(){
		return sqlSession.selectList("getNoticeList");
	}
	
	public int NoticeWrite(NoticeVO noticevo) {
		return sqlSession.insert("NoticeWrite", noticevo);
	}
}
