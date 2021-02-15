package com.user.service;

import java.util.*;

import javax.servlet.http.*;

import com.user.dao.*;
import com.user.dto.*;

import controller.*;

public class UserListService implements CommandAction{
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//		System.out.println("어디니");
		UserDAO userdao = new UserDAO();
		List<UserDTO> list = userdao.getUserList();
		
		request.setAttribute("list", list);
		
		return "admin_user/admin_userlistview.jsp";
	}

}
