package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.model.Book;
import com.model.HibernateSessionFactory;

public class BookDao {
	public static List<Book> GetBookList(){
		Session session=HibernateSessionFactory.getSession();
		List<Book> list=new ArrayList<Book>();
		try{
			session.beginTransaction();
			Criteria cirteria=session.createCriteria(Book.class);
			cirteria.addOrder(Order.asc("id"));
			list=(List<Book>)cirteria.list();
			session.getTransaction().commit();
			return list;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}
	public static void savebook(Book book){
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.save(book);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	public static void delBook(int id){
		Book book=new Book();
		book.setId(id);
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.delete(book);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	public static Book toselectBook(int id){
		Session session=HibernateSessionFactory.getSession();
		Book book=(Book)session.get(Book.class, id);
		return book;
	}
	public static void updatebook(Book book){
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.update(book);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
}
