package com.project.travel.dao;

import com.project.travel.vo.UserVO;

public interface UserDAO{
	// 회원가입
	public void register(UserVO vo) throws Exception;
	
	// 로그인
	public UserVO login(UserVO vo) throws Exception;
	
	// 아이디 중복체크
	public int idChk(UserVO vo) throws Exception;
	
	// 회원정보 수정
	public void memberUpdate(UserVO vo) throws Exception;
}