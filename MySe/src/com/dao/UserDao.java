package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.model.HibernateSessionFactory;
import com.model.User;

public class UserDao {
	public static User isLogin(String no,String pwd)
	{
		Session session=HibernateSessionFactory.getSession();
		try{
		Criteria cirteria=session.createCriteria(User.class);
		cirteria.add(Restrictions.eq("num", no)).add(Restrictions.eq("password", pwd));
		List<User> users=cirteria.list();
		session.close();
		if(users.isEmpty()){
			return null;
		}else{
			return users.get(0);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	public static List<User> getUserList(){
		Session session=HibernateSessionFactory.getSession();
		Criteria criteria=session.createCriteria(User.class);
		List<User> list=criteria.list();
		return list;
	}
	public static void deleteUser(int id){
		User user=new User();
		user.setId(id);
		Session session=HibernateSessionFactory.getSession();
		try{
		session.beginTransaction();
		session.delete(user);
		session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	public static void addUser(User user){
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
