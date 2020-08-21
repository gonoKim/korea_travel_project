package com.project.travel.service;

import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.UserVO;

public interface UserService {
	// 회원가입
	public void register(UserVO vo) throws Exception;
	
	// 로그인
	public UserVO login(UserVO vo) throws Exception;
	
	// 아이디 중복 체크
	public int idChk(UserVO vo) throws Exception;

	// 회원정보 수정
	int UserUpdate(UserVO vo) throws Exception; 
	
	// 마이페이지 뷰
	UserVO getMyPageView(String M_Id);
	
}