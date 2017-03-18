package com.action;


import com.dao.FirstPageDao;
import com.model.Firstpage;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FirstpageAction extends ActionSupport{

	/**
	 * 
	 */
	private String content=null;
	private Firstpage firstspage=null;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Firstpage getFirstspage() {
		return firstspage;
	}
	public void setFirstspage(Firstpage firstspage) {
		this.firstspage = firstspage;
	}
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception{
		ActionContext context=ActionContext.getContext();
		String content=FirstPageDao.getFirstPageContent();
		context.put("description", content);
		return SUCCESS;
	}
	public String adminShowFirstPage(){
		firstspage=FirstPageDao.getFirstpageById(1);
		return "firstpage";
	}
	public String modifyfirstpage(){
		firstspage=FirstPageDao.getFirstpageById(1);
		System.out.println("modifyfirstpage:"+firstspage.getDescription());
		return "modifyfirstpage";
	}
	public String saveFirstpage(){
		firstspage=new Firstpage();
		firstspage.setDescription(content);
		firstspage.setId(1);
		FirstPageDao.saveFirstpage(firstspage);
		return "firstpage";
	}
}
