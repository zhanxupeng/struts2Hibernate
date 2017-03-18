package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.model.HibernateSessionFactory;
import com.model.Ppt;

public class PptDao {
	public static List<Ppt> GetPptList(){
		Session session=HibernateSessionFactory.getSession();
		List<Ppt> list=new ArrayList<Ppt>();
		try{
			session.beginTransaction();
			Criteria criteria=session.createCriteria(Ppt.class);
			criteria.addOrder(Order.asc("id"));
			list=(List<Ppt>)criteria.list();
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
	public static Ppt GetPpt(int uid){
		Session session=HibernateSessionFactory.getSession();
		Ppt ppt=null;
		try{
			session.beginTransaction();
			ppt=(Ppt)session.get(Ppt.class,uid);
			session.getTransaction().commit();
			return ppt;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		return null;
	}
	public static int GetListSize(){
		Session session=HibernateSessionFactory.getSession();
		List<Ppt> list=new ArrayList<Ppt>();
		try{
			session.beginTransaction();
			Criteria criteria=session.createCriteria(Ppt.class);
			criteria.addOrder(Order.asc("id"));
			list=(List<Ppt>)criteria.list();
			session.getTransaction().commit();
			return list.size();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return 0;
		}finally{
			session.close();
		}
	}
	public static List<Ppt> GetFenList(int pagenum,int pagesize){
		Session session=HibernateSessionFactory.getSession();
		List<Ppt> list=new ArrayList<Ppt>();
		try{
			session.beginTransaction();
			Query query=session.createQuery("from Ppt");
			query.setFirstResult((pagenum-1)*pagesize);
			query.setMaxResults(pagesize);
			list=query.list();
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
	public static void delppt(int id){
		Ppt ppt=new Ppt();
		ppt.setId(id);
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.delete(ppt);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	public static void saveppt(Ppt ppt){
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.save(ppt);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
}
