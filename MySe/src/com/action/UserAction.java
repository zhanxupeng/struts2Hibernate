package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String num;
	private String name;
	private String pwd;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
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
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private List<User> users=new ArrayList<User>();
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public String login() throws Exception{
		ActionContext context=ActionContext.getContext();
		HttpServletRequest request=ServletActionContext.getRequest();
		String no=request.getParameter("no");
		String pwd=request.getParameter("pwd");
		if(no.isEmpty()||pwd.isEmpty())
		{
			return ERROR;
		}else{
			User user=UserDao.isLogin(no, pwd);
			if(user==null)
			{
				return ERROR;
			}else{
				context.put("user", user);
				return SUCCESS;
			}
		}
	}
	public String showUserList() throws Exception{
		users=UserDao.getUserList();
		return "user";
	}
	public String delUser() throws Exception{
		UserDao.deleteUser(id);
		users=UserDao.getUserList();
		return "user";
	}
	public String addUser() throws Exception{
		User user=new User();
		user.setName(name);
		user.setNum(num);
		user.setPassword(pwd);
		UserDao.addUser(user);
		users=UserDao.getUserList();
		return "user";
	}
	public String toAddUser() throws Exception{
		return "toAddUser";
	}

}
