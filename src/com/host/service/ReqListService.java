package com.host.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.host.dao.HostingDAO;
import controller.CommandAction;

public class ReqListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int midx = Integer.parseInt(request.getParameter("midx"));
		
		HostingDAO dao = new HostingDAO();
		Map<String, String> count = dao.getReqList(midx);
		
		request.setAttribute("count", count);
		
		return "host/hostmain.jsp";
	}

}
