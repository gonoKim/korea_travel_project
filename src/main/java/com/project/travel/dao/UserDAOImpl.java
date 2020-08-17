package com.project.travel.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject SqlSession sqlSession;
	
	// 회원가입
	@Override
	public void register(UserVO vo) throws Exception {
		sqlSession.insert("UserMapper.register", vo);
	}
	
	// 로그인
	@Override
	public UserVO login(UserVO vo) throws Exception {
		
		return sqlSession.selectOne("UserMapper.login", vo);
	}
}