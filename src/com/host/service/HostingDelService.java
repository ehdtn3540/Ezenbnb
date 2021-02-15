package com.host.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.host.dao.HostingDAO;
import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;

import controller.CommandAction;

public class HostingDelService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int hidx = Integer.parseInt(request.getParameter("hidx"));
		
		HostingDAO dao = new HostingDAO();
		dao.delHosting(hidx);
		
		return "host/hostingdelresult.jsp";
	}

}
