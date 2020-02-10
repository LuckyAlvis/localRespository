package org.dai.controller;


import javax.servlet.http.HttpServletRequest;

import org.dai.entity.*;
import org.dai.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BorrowHandler {
	@Autowired
	private BorrowService borrowService;
	

	public void setBorrowService(BorrowService borrowService) {
		this.borrowService = borrowService;
	}
	
	@RequestMapping("Return.do")
	public String Return(HttpServletRequest request) {
		borrowService.deleteBorrowByBorrowID(Integer.parseInt(request.getParameter("borrowID")));
		return "/MyLead.jsp";
	}
	@RequestMapping("Borrow.do")
	public String Borrow(Borrow borrow ,HttpServletRequest request) {
		java.text.SimpleDateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String add_time = df.format(new java.util.Date()).toString();// new Date()为获取当前系统时间
		borrow.setbTime(add_time);
		borrow.setBorrowID(borrowService.MaxID()+1);
		borrow.setbDuration(Integer.parseInt(request.getParameter("Duration")));
		borrowService.addBorrow(borrow);
		
		return "/MyLead.jsp";
	}
	
	
}
