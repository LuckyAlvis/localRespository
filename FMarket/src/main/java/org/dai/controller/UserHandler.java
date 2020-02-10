package org.dai.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.dai.entity.User;
import org.dai.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserHandler {
	public static HttpSession session;
	//控制器依赖于Service
	@Autowired
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@RequestMapping("Login.do")
	
	public String queryUserByUserID(User user,HttpServletRequest request) {
		session = request.getSession();
		session.setAttribute("ID", "");
		if(userService.queryUser(user) == null) {
			return "/Login.jsp?error=yes";
		}
		else {
			String ID = userService.queryUser(user).getUserID()+"";
			String userName = userService.queryUser(user).getUserName();
			session.setAttribute("ID",ID);
			session.setAttribute("userName", userName);
			return "/FleaMarket.jsp";
		}
	}
	@RequestMapping("Register.do")
	public String addUser(User user) {
		if(userService.queryUserByUserName(user.getUserName())!=null){
			return "/Register.jsp?error=yes";
		}else {
			userService.addUser(user);
			return "/Login.jsp?error=success";
		}
	}
	@RequestMapping("UpdateUserInfo.do")
	public String Update(User user) {
		userService.updateUser(user);
		return "/MyInfo.jsp";
	}
	@RequestMapping("Logout.do")
	public String Logout() {
		session.invalidate();
		return "/FleaMarket.jsp";
	}
	
}
