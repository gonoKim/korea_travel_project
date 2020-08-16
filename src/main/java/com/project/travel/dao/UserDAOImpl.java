package com.project.travel.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.travel.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject SqlSession sqlSession;

	@Override
	public void register(UserVO vo) throws Exception {
		System.out.println("111111");
		sqlSession.insert("UserMapper.register", vo);
		System.out.println("222222");
	}
}