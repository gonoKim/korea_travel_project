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
	
	// 아이디 찾기
	@Override
	public UserVO findId(UserVO vo) throws Exception {
		return dao.findId(vo);
	}
}