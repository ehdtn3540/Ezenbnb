package com.category.service;

import java.util.*;

import javax.servlet.http.*;

import com.category.dao.*;
import com.category.dto.*;

import controller.*;

public class MainCategoryList implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//		System.out.println("왜그래");
		
		CategoryDAO cdao = new CategoryDAO();
		
		List<CategoryDTO> clist = cdao.getCategoryList();
		request.setAttribute("list", clist);
		return "main/main.jsp";
	}
}
