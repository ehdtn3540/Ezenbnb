package com.message.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.message.dao.MessageDAO;
import com.message.dto.ChatroomDTO;
import com.message.dto.MessageDTO;

import controller.CommandAction;

public class MessageListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int chatidx = Integer.parseInt(request.getParameter("chatidx"));
		
		MessageDAO dao = new MessageDAO();
		List<MessageDTO> list = dao.getMessageList(chatidx);
		
		request.setAttribute("list", list);
		
		return "user/guest/msg.jsp";
	}
}
