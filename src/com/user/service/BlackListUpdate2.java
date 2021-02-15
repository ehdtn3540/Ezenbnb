package com.user.service;

import javax.servlet.http.*;

import com.user.dao.*;
import com.user.dto.*;

import controller.*;

public class BlackListUpdate2 implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int uidx = Integer.parseInt(request.getParameter("uidx"));
		System.out.println(uidx);
		
		
		UserDTO udto = new UserDTO();
		udto.setUidx(uidx);
		
		UserDAO udao = new UserDAO();
		int n = udao.blackUpdate2(udto);
		
		request.setAttribute("n", n);
		
		return "admin_user/admin_updateblack2.jsp";
	}

}
