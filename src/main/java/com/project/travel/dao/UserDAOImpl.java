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
	
	// 아이디 중복 체크
	@Override
	public int idChk(UserVO vo) throws Exception {
		int result = sqlSession.selectOne("UserMapper.idChk", vo);
		return result;
	}

	// 회원정보 수정
	@Override
	public void memberUpdate(UserVO vo) throws Exception {
		sqlSession.update("UserMapper.memberUpdate", vo);
	}
}