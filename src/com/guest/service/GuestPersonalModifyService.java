package com.guest.service;

import java.util.*;

import javax.servlet.http.*;

import com.guest.dao.GuestDAO;
import com.user.dto.*;

import controller.*;

public class GuestPersonalModifyService implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("GuestPersonalModifyService");
		request.setCharacterEncoding("UTF-8");
		
		//파라메터값(uidx)
		
		int uidx = Integer.parseInt(request.getParameter("uidx"));
		System.out.println(uidx);
		String uname = request.getParameter("fullname");
		String ubirth = request.getParameter("month")+"월"+request.getParameter("day")+"일"
				+request.getParameter("year")+"년";
		String userid = request.getParameter("id");
		String uphone = request.getParameter("phone");
		String uaddress = request.getParameter("address");
		String uemerg = request.getParameter("emerg");
		
		UserDTO dto = new UserDTO();
		dto.setUidx(uidx);
		dto.setUname(uname);
		dto.setUbirth(ubirth);
		dto.setUserid(userid);
		dto.setUphone(uphone);
		dto.setUaddress(uaddress);
		dto.setUemerg(uemerg);
		
		GuestDAO dao = new GuestDAO();
		int n = dao.personalmodify(dto);
		
		request.setAttribute("n", n);
		System.out.println("n :"+n);
		
		return "/user/guest/account-settings.jsp";
	}

}
