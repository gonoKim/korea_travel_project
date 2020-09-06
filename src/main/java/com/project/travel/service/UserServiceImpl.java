package com.project.travel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.travel.dao.UserDAO;
import com.project.travel.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject UserDAO dao;
	
	// 회원가입
	@Override
	public void register(UserVO vo) throws Exception {
		dao.register(vo);		
	}
	
	// 로그인
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return dao.login(vo);
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(UserVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}
	
	// 전화번호 중복 체크
	@Override
	public int phoneChk(UserVO vo) throws Exception {
		int result = dao.phoneChk(vo);
		return result;
	}
	
	// 아이디 찾기
	@Override
	public UserVO findId(UserVO vo) throws Exception {
		return dao.findId(vo);
	}
	
	// 비밀번호 찾기
	@Override
	public UserVO findPw(UserVO vo) throws Exception {
		return dao.findPw(vo);
	}
	
	// 비밀번호 찾기 후 변경
	@Override
	public int changePwd(UserVO vo) throws Exception {
		return dao.changePwd(vo);
	}

}