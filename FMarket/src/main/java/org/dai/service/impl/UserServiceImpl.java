package org.dai.service.impl;

import org.dai.entity.User;
import org.dai.mapper.UserMapper;
import org.dai.service.UserService;

public class UserServiceImpl implements UserService{
	
	private UserMapper userMapper;
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	public void addUser(User user) {
		userMapper.addUser(user);
	}
	public void deleteUserByUserID(int userID) {
		userMapper.deleteUserByUserID(userID);
	}
	public void updateUser(User user) {
		userMapper.updateUser(user);
	}
	public User queryUser(User user) {
		return userMapper.queryUser(user);
	}
	public User queryUserByUserName(String userName) {
		return userMapper.queryUserByUserName(userName);
	}
	@Override
	public User queryUserByUserID(int userID) {
		return userMapper.queryUserByUserID(userID);
	}
	
}
