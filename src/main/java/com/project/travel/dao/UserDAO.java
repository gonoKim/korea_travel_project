package com.project.travel.dao;

import java.util.HashMap;

import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.UserVO;

public interface UserDAO{
	// 회원가입
	public void register(UserVO vo) throws Exception;
	
	// 로그인
	public UserVO login(UserVO vo) throws Exception;
	
	// 아이디 중복체크
	public int idChk(UserVO vo) throws Exception;
	
	// 회원정보 수정
	public int UserUpdate(UserVO vo) throws Exception;
	
	// 마이페이지 뷰
	public UserVO getMyPageView(String M_Id);

}