package org.dai.service;

import org.dai.entity.User;

public interface UserService {
	void addUser(User user);
	void deleteUserByUserID(int userID);
	void updateUser(User user);
	User queryUser(User user);
	User queryUserByUserName(String userName);
	User queryUserByUserID(int userID);
}
