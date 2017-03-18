package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.model.HibernateSessionFactory;
import com.model.Teacher;

public class TeacherDao {
	public static Teacher getTeacher() throws Exception{
		Session session=HibernateSessionFactory.getSession();
		List<Teacher> teachers=new ArrayList<Teacher>();
		try{
			session.beginTransaction();
			Criteria criteria=session.createCriteria(Teacher.class);
			criteria.addOrder(Order.asc("id"));
			teachers=(List<Teacher>)criteria.list();
			session.getTransaction().commit();
			if(teachers.size()>0){
				return teachers.get(0);
			}else{
				Teacher teacher=new Teacher();
				session.save(teacher);
				session.clear();
				teacher=(Teacher)session.get(Teacher.class,1);
				return teacher;
			}
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}
	public static void InsertTeacher(Teacher teacher){
		Session session=HibernateSessionFactory.getSession();
		try{
			session.beginTransaction();
			session.update(teacher);
			session.getTransaction().commit();
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
}
