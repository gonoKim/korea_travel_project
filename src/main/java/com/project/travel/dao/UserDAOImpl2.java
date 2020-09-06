package com.project.travel.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.UserVO;

@Repository
public class UserDAOImpl2 implements UserDAO2 {
	
	@Inject SqlSession sqlSession;
	

	// 로그인
	@Override
	public UserVO login(UserVO vo) throws Exception {
		return sqlSession.selectOne("UserMapper2.login", vo);
	}
	
	// 비밀번호 찾기 후 변경
		@Override
		public int changePwd(UserVO vo) throws Exception {
			return sqlSession.update("UserMapper2.changePwd", vo);
		}
	
	// 회원정보 수정
		@Override
		public int UserUpdate(UserVO vo) throws Exception {
			return sqlSession.update("UserMapper2.UserUpdate", vo);
		}

		// 마이페이지 뷰
		@Override
		public UserVO getMyPageView(String M_Id)  {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("M_Id", M_Id);
			return sqlSession.selectOne("UserMapper2.getMyPageView", map);
		}

		@Override
		public int delUser(UserVO vo) {
			return sqlSession.update("UserMapper2.delUser", vo);
		}
}