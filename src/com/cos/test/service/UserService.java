package com.cos.test.service;

import java.util.List;

import com.cos.test.dto.JoinReqDto;
import com.cos.test.dto.LoginReqDto;
import com.cos.test.dto.SelectReqDto;
import com.cos.test.user.User;
import com.cos.test.user.UserDao;

public class UserService {
	
	private UserDao userDao; 

	public UserService() {
		userDao = new UserDao();
	}
	
	public int 회원가입(JoinReqDto dto) {
		int result = userDao.save(dto);
		return result;
	}

	public User 로그인(LoginReqDto dto) {
		return userDao.findByUsernameAndPassword(dto);
	}
	
	public List<User> 회원보기() {
		return userDao.findAll();
	}
	
	public int 회원삭제(int id) {

		return userDao.deleteById(id);
	}
}
