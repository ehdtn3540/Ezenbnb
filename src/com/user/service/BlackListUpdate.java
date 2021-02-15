package com.user.service;

import javax.servlet.http.*;

import com.user.dao.*;
import com.user.dto.*;

import controller.*;

public class BlackListUpdate implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
//		int utype = Integer.parseInt(request.getParameter("utype"));
		int uidx = Integer.parseInt(request.getParameter("uidx"));
		
		System.out.println(uidx);
		
		UserDTO udto = new UserDTO();
//		udto.setUtype(utype);
		udto.setUidx(uidx);
		
		UserDAO udao = new UserDAO();
		int n = udao.blackUpdate(udto);
		
		request.setAttribute("n", n);
		
		return "admin_user/admin_updateblack.jsp";
	}

}
