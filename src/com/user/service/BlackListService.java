package com.user.service;

import java.util.*;

import javax.servlet.http.*;

import com.user.dao.*;
import com.user.dto.*;

import controller.*;

public class BlackListService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("왔니");

		UserDAO userdao = new UserDAO();
		List<UserDTO> list = userdao.getBlackList();

		request.setAttribute("list", list);

		return "admin_user/admin_balcklistview.jsp";
	}

}
