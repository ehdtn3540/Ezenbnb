package com.message.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.message.dao.MessageDAO;
import com.message.dto.ChatroomDTO;

import controller.CommandAction;

public class ChatroomListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String userid = request.getParameter("userid");
		
		MessageDAO dao = new MessageDAO();
		List<ChatroomDTO> list = dao.getChatroomList(userid);
		
		request.setAttribute("list", list);
		
		return "user/guest/inbox.jsp";
	}
}
