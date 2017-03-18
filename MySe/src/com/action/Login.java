package com.action;

import com.dao.AdminDao;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport {

	/**
	 * 
	 */
	private String name;
	private String pwd;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	private static final long serialVersionUID = 1L;
	public String adminLogin(){
		boolean result=AdminDao.login(name, pwd);
		if(result){
			return SUCCESS;
		}else{
			return "loginerror";
		}
	}
}
