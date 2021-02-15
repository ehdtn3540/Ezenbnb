package com.host.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.host.dao.HostingDAO;
import com.pay.dto.PreApprvDTO;

import controller.CommandAction;

public class PreApprvListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int midx = Integer.parseInt(request.getParameter("midx"));
		
		HostingDAO dao = new HostingDAO();
		List<PreApprvDTO> list = dao.getPreApprvList(midx);
		
		request.setAttribute("list", list);
		
		return "host/preApprv.jsp";
	}

}
