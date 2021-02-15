package com.guest.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.user.dto.UserDTO;


public class GuestDAO {
	private static SqlSessionFactory factory;

	static {
		try {
			String resource = "mybatis/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	// 회원 이름 가져오기 ------------------------------------------------------------------
	public String getGuestName(String id) {
		SqlSession session = factory.openSession();
		System.out.println("getGuestName DAO에 들어옴");
		String gName = "";
		gName = session.selectOne("mybatis.GuestMapper.getGuestName", id);
		session.close();
		
		return gName;
	}
	// 회원개인정보 가져오기----------------------------------------------------
	public UserDTO getUserPers(String id) {
		SqlSession session = factory.openSession();
		System.out.println("getUserPers DAO에 들어옴");
		UserDTO dto = session.selectOne("mybatis.GuestMapper.getPersonalinfo", id);
		session.close();
		
		return dto;
	}
	// 회원개인정보 수정----------------------------------------------------
	public int personalmodify(UserDTO dto) {
		SqlSession session = factory.openSession();
		System.out.println("personalmodify DAO에 들어옴");
		int n = 0;
		try {
			System.out.println(dto.getUname());
			System.out.println(dto.getUbirth());
			System.out.println(dto.getUaddress());
			System.out.println(dto.getUemerg());
			System.out.println(dto.getUphone());
			System.out.println(dto.getUidx());
			System.out.println(dto.getUserid());
			n = session.update("mybatis.GuestMapper.personalmodify", dto);
			if(n>0)
				session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		return n;
	}
}
