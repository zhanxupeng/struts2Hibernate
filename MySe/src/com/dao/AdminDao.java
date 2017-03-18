package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.model.Admin;
import com.model.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionSupport;

public class AdminDao extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static boolean login(String name,String pwd){
		Session session=HibernateSessionFactory.getSession();
		try{
		 Criteria criteria=session.createCriteria(Admin.class);
		 criteria.add(Restrictions.eq("name", name));
		 criteria.add(Restrictions.eq("pwd",pwd));
		 List<Admin> list=criteria.list();
		 if(list.isEmpty()){
			 return false;
		 }else{
			 return true;
		 }
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
