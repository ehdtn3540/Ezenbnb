package com.pay.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.house.dto.LikeyDTO;
import com.pay.dto.AccountDTO;
import com.pay.dto.ReceiptDTO;
import com.pay.dto.ReservDTO;


public class AccountDAO {
	private static SqlSessionFactory factory;
	private static AccountDAO instance;
	
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	// 상품 등록하기-----------------------------------------------------
	public int AccountInsert(AccountDTO dto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.insert("mybatis.AccountMapper.AccountInsert", dto);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
		return n;
	}
	// 예약(결제) 리스트 가져오기 (guest)--------------------------------------------
	public List<ReservDTO> getReserveList(int midx) {
		SqlSession session = factory.openSession();
		System.out.println("AccountDAO getReserv mthd/midx:"+midx);
		List<ReservDTO> list = session.selectList("mybatis.AccountMapper.getReservList", midx);
		session.close();
		return list;
	}
	//영수증 가져오기(guest)----------------------------------------------
	public List<ReceiptDTO> getReceipt(int aidx) {
		SqlSession session = factory.openSession();
		System.out.println("AccountDAO getReceipt midx:"+aidx);
		List<ReceiptDTO> list = session.selectList("mybatis.AccountMapper.getReceipt", aidx);
		session.close();
		return list;
	}
}
