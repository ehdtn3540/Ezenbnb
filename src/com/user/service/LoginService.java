package com.user.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.dao.UserDAO;
import com.user.dto.UserDTO;

import controller.CommandAction;

public class LoginService implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session=request.getSession();
		
		String userid=request.getParameter("id");
		String upw=request.getParameter("pass");
		
		// 자동로그인 변수
		String loginChk=request.getParameter("autologin");
		
		UserDAO dao = new UserDAO();
		UserDTO entity = dao.getLoginUser(userid, upw);
		
		if (entity != null) {
			// 세션설정
			session.setAttribute("logOK", entity);
			
			//로그인 유지처리
            if(loginChk != null){
                Cookie cookie = new Cookie("cid", userid);
                cookie.setMaxAge(60);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
            System.out.println("로그인 성공/ 아이디:" + userid);
			return "/index.jsp";
		
		}else {
			session.setAttribute("logFail","아이디 혹은 패스워드가 잘못 입력되었습니다");
			return "user/login/login.jsp";
		}
	}
}
