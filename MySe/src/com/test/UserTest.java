package com.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.dao.FirstPageDao;
import com.dao.UserDao;

public class UserTest {

	@Test
	public void test() {
		UserDao.isLogin("2008","123456");
	}
	@Test
	public void firstpagetest(){
		String s=FirstPageDao.getFirstPageContent();
		System.out.println(s);
	}
}
