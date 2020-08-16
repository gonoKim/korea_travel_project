package com.project.travel.dao;

import com.project.travel.vo.UserVO;

public interface UserDAO{
	public void register(UserVO vo) throws Exception;
}