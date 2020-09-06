package com.project.travel.dao;

import com.project.travel.vo.UserVO;

public interface UserDAO2{
	

	// 로그인
	public UserVO login(UserVO vo) throws Exception;
	
	// 비밀번호 찾기 후 변경
		public int changePwd(UserVO vo) throws Exception;
	
	// 회원정보 수정
		public int UserUpdate(UserVO vo) throws Exception;
		
		// 마이페이지 뷰
		public UserVO getMyPageView(String M_Id);

		//회원탈퇴
		public int delUser(UserVO vo);
}