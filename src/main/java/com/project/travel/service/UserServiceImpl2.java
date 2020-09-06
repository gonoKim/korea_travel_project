package com.project.travel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.travel.dao.UserDAO;
import com.project.travel.dao.UserDAO2;
import com.project.travel.vo.UserVO;

@Service
public class UserServiceImpl2 implements UserService2 {
	
	@Inject UserDAO2 dao;
	

	// 로그인
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return dao.login(vo);
	}
	
	// 비밀번호 찾기 후 변경
		@Override
		public int changePwd(UserVO vo) throws Exception {
			return dao.changePwd(vo);
		}
		
	// 회원정보 수정
		@Override
		public int UserUpdate(UserVO vo) throws Exception {
			return dao.UserUpdate(vo);
		}
		
		// 마이페이지 뷰
		@Override
		public UserVO getMyPageView(String M_Id) {
			return dao.getMyPageView(M_Id);
		}

		@Override
		public int delUser(UserVO vo) throws Exception {
			return dao.delUser(vo);
		}

}