package com.house.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.CommandAction;

public class HouseInsertService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");

		int midx;
		String hname;
		String hcatg;
		String haddress;
		String hphone;
		String himage = "";
		String hfacility;
		int hprice;
		int hbed;
		int hbat;
		int hperson;
		int hutill;

		// 이미지 저장
		final String saveFolder = request.getSession().getServletContext().getRealPath("/img/house");
		final String encoding = "UTF-8";
		final int maxSize = 10 * 1024 * 1024; // 10mb
		try { // 파일이 서버에 업로드되는 시점은 MultipartRequest 객체 생성 순간이다.
			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encoding,
					new DefaultFileRenamePolicy()); // request가 되는 순간 null로 변한다. //out.print("성공");
			String fileName = multi.getFilesystemName("uploadFile");
			System.out.println(fileName);
			himage = fileName;
			System.out.println(himage);
			String original = multi.getOriginalFileName("uploadFile"); // filename은 중복이름이 들어올 경우 자동으로 index가 붙는데,
			// index되기 전의 원본명
			String type = multi.getContentType("uploadFile");
			File f = multi.getFile("uploadFile");
			int len = 0;
			if (f != null) {
				len = (int) f.length();
			}
			midx = Integer.parseInt(multi.getParameter("midx"));
			System.out.println("house insert midx:" + midx);
			hname = multi.getParameter("hname");
			hcatg = multi.getParameter("hcatg");
			haddress = multi.getParameter("address") + multi.getParameter("addressDetail")
					+ multi.getParameter("addressDetail");
			hphone = multi.getParameter("hphone");
			hfacility = multi.getParameter("hfacility");
			hprice = Integer.parseInt(multi.getParameter("hprice"));
			hbed = Integer.parseInt(multi.getParameter("hbed"));
			hbat = Integer.parseInt(multi.getParameter("hbat"));
			hperson = Integer.parseInt(multi.getParameter("hperson"));
			hutill = Integer.parseInt(multi.getParameter("hutill"));

			HouseDTO dto = new HouseDTO();
			dto.setMidx(midx);
			dto.setHname(hname);
			dto.setHcatg(hcatg);
			dto.setHaddress(haddress);
			dto.setHphone(hphone);
			dto.setHimage(himage);
			dto.setHfacility(hfacility);
			dto.setHprice(hprice);
			dto.setHbed(hbed);
			dto.setHbat(hbat);
			dto.setHperson(hperson);
			dto.setHutill(hutill);

			HouseDAO dao = new HouseDAO(); // dao 성공 1, 실패 0
			int n = dao.insertHouse(dto);
			request.setAttribute("n", n);
			System.out.println("성공여부 n:" + n);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/host/houseinsert.jsp";
	}
}
