package com.test;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.dao.AdminDao;
import com.dao.BookDao;
import com.dao.FirstPageDao;
import com.dao.PptDao;
import com.dao.TeacherDao;
import com.dao.UserDao;
import com.model.Book;
import com.model.Firstpage;
import com.model.Ppt;
import com.model.Teacher;
import com.model.User;

public class MyTest {

	public static void main(String[] args) {
		Book book=BookDao.toselectBook(1);
		System.out.println(book.getDescription());
//		Book book=new Book();
//		book.setName("Ë§¸ç");
//		book.setDescription("²»ÖªµÀ");
//		book.setPath("/Ë§¸ç");
		BookDao.savebook(book);
//		Calendar calendar=Calendar.getInstance();
//		int year=calendar.get(Calendar.DATE);
//		System.out.println(year);
//		Date date=new Date();
//		System.out.println(date);
//		User user=new User();
//		user.setName("Õ²´óË§");
//		user.setNum("2015");
//		user.setPassword("654321");
//		UserDao.addUser(user);
//		UserDao.deleteUser(1);
//		List<User> list=UserDao.getUserList();
//		System.out.println(list.size());
//		Firstpage firstpage=FirstPageDao.getFirstpageById(1);
//		if(firstpage!=null){
//			System.out.println(firstpage.getId()+firstpage.getDescription());
//		}
//		boolean result=AdminDao.login("zha","123456");
//		if(result){
//			System.out.println("µÇÂ¼³É¹¦£¡");
//		}else{
//			System.out.println("µÇÂ¼Ê§°Ü£¡");
//		}
//		List<Ppt> list=new ArrayList<Ppt>();
//		list=PptDao.GetFenList(1,2);
//		System.out.println(list.get(0).getName()+","+list.get(1).getName());
//		list=PptDao.GetFenList(2, 2);
//		System.out.println(list.get(0).getName()+","+list.get(1).getName());
//		int a=PptDao.GetListSize();
//		System.out.println(a);
//		Ppt ppt=PptDao.GetPpt(1);
//		System.out.println(ppt.getName()+","+ppt.getPath());
//		String s=FirstPageDao.getFirstPageContent();
//		System.out.println(s);
//		List<Ppt> list=new ArrayList<Ppt>();
//		list=PptDao.GetPptList();
//		System.out.println(list.get(0).getName()+","+
//		list.get(0).getPath()+","+list.get(0).getDate());
//		List<Book> list=new ArrayList<Book>();
//		list=BookDao.GetBookList();
//		System.out.println(list.get(0).getName()+","+list.get(0).getPath());
		// TODO Auto-generated method stub
//		User user=UserDao.isLogin("2018","123456");
//		System.out.println(user.getName()+user.getPassword());
//		try {
//			Teacher teacher=TeacherDao.getTeacher();
//			System.out.println(teacher.getName()+","+teacher.getPhoto());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}

}
