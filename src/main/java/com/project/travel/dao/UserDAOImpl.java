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
	
	// 마이페이지 뷰
	@Override
	public UserVO getMyPageView(String M_Id)  {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("M_Id", M_Id);
		return sqlSession.selectOne("getMyPageView", map);
	}
	
	// 전화번호 중복 체크 (마이페이지)
	@Override
	public int myPagePhoneChk(UserVO vo) throws Exception {
		int result = sqlSession.selectOne("UserMapper.myPagePhoneChk", vo);
		return result;
	}
	
	// 회원정보 수정
	@Override
	public void userUpdate(UserVO vo) throws Exception {
		sqlSession.update("UserMapper.userUpdate", vo);
	}

	// 회원 탈퇴
	@Override
	public int delUser(UserVO vo) {
		return sqlSession.update("delUser", vo);
	}
}