package com.dao;

import org.hibernate.Session;

import com.model.Firstpage;
import com.model.HibernateSessionFactory;

public class FirstPageDao {
	public static String getFirstPageContent(){
		Session session=HibernateSessionFactory.getSession();
		String context=new String();
		try{
		session.beginTransaction();
		Firstpage firstpage=(Firstpage)session.get(Firstpage.class, 1);
		context=firstpage.getDescription();
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return context;
	}
	public static Firstpage getFirstpageById(int id){
		Session session=HibernateSessionFactory.getSession();
		Firstpage firstpage=(Firstpage)session.get(Firstpage.class,id);
		return firstpage;
	}
	public static void saveFirstpage(Firstpage firstpage){
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.update(firstpage);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
