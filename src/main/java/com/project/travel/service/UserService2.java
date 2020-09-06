package com.project.travel.service;

import com.project.travel.vo.UserVO;

public interface UserService2 {

	// 로그인
	public UserVO login(UserVO vo) throws Exception;
	

	// 비밀번호 찾기 후 변경
	public int changePwd(UserVO vo) throws Exception;
	
	// 회원정보 수정
		public int UserUpdate(UserVO vo) throws Exception; 
		
	// 회원탈퇴
		public int delUser(UserVO vo) throws Exception;
		
		// 마이페이지 뷰
		UserVO getMyPageView(String M_Id);
}