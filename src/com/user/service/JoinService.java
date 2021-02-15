package com.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.dao.UserDAO;
import com.user.dto.UserDTO;

import controller.CommandAction;

public class JoinService implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
	
		String userid=request.getParameter("id");
		String upw=request.getParameter("pass");
		String uname=request.getParameter("lastname")+request.getParameter("firstname");
		String ubirth=request.getParameter("year")+"년"+request.getParameter("month")+"월"
					+request.getParameter("day")+"일";
		
		System.out.println(userid);
		System.out.println(upw);
		System.out.println(uname);
		System.out.println(ubirth);
		
		//save DATA
		UserDTO dto = new UserDTO();
		dto.setUserid(userid);
		dto.setUpw(upw);
		dto.setUname(uname);
		dto.setUbirth(ubirth);
		
		//insertDB
		UserDAO dao = new UserDAO();
		
		//dao 성공 1, 실패 0
		int n = dao.registration(dto);
		request.setAttribute("n", n);
		
		System.out.println("성공여부 n:"+n);
		
		return "user/login/login.jsp";
	}
}
