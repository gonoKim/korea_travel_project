package com.project.travel.dao;

import java.util.HashMap;

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
	
	// 전화번호 중복 체크
	@Override
	public int phoneChk(UserVO vo) throws Exception {
		int result = sqlSession.selectOne("UserMapper.phoneChk", vo);
		return result;
	}
	
	// 아이디 찾기
	@Override
	public UserVO findId(UserVO vo) throws Exception {
		return sqlSession.selectOne("UserMapper.findId", vo);
	}
	
	// 비밀번호 찾기
	@Override
	public UserVO findPw(UserVO vo) throws Exception {
		return sqlSession.selectOne("UserMapper.findPw", vo);
	}
	
	// 비밀번호 찾기 후 변경
	@Override
	public int changePwd(UserVO vo) throws Exception {
		return sqlSession.update("UserMapper.changePwd", vo);
	}
}