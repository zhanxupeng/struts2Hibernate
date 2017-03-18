package com.action;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.PptDao;
import com.model.Ppt;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PptAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File uppt;//用户上传的文件
	private String upptFileName;//长传文件的文件名
	public File getUppt() {
		return uppt;
	}
	public void setUppt(File uppt) {
		this.uppt = uppt;
	}
	public String getUpptFileName() {
		return upptFileName;
	}
	public void setUpptFileName(String upptFileName) {
		this.upptFileName = upptFileName;
	}
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String showPptList() throws Exception{
		ActionContext context=ActionContext.getContext();
		List<Ppt> lst=PptDao.GetPptList();
		context.put("lst",lst);
		return "pptlist";
	}
	private String path;
	private String filename;
	private File ppt;
	private String pptFileName;
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public File getPpt() {
		return ppt;
	}
	public void setPpt(File ppt) {
		this.ppt = ppt;
	}
	public String getPptFileName() {
		return pptFileName;
	}
	public void setPptFileName(String pptFileName) {
		this.pptFileName = pptFileName;
	}
	public java.io.InputStream getDownloadFile() throws Exception{
		InputStream in=ServletActionContext.getServletContext().getResourceAsStream(getPath());
		return in;
	}
	public String pptDownload() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String id=request.getParameter("id");
		System.out.println("当前id号为："+id);
		Ppt ppt=PptDao.GetPpt(Integer.parseInt(id));
		filename=ppt.getName();
		path=ppt.getPath();
		return SUCCESS;
	}
	public String fenYeShow() throws Exception{
		ActionContext context=ActionContext.getContext();
		Map<String,Object> mysession=(Map<String,Object>) context.getSession();
		int a=PptDao.GetListSize();
		//求页数
		int ye=a/3+1;
		List<Ppt> lst=PptDao.GetFenList(1,3);
		context.put("lst",lst);
		List<Integer> yelist=new ArrayList<Integer>();
		for(int i=1;i<=ye;i++)
		{
			yelist.add(i);
		}
		mysession.put("sumye", String.format("%d",ye));
		mysession.put("yelist",yelist);
		if(ye>1){
			context.put("xiaye", 2);
		}else{
			context.put("xiaye", 1);
		}
		context.put("shangye",1);
		return "pptlist";
	}
	public static String secondFenYe(){
		HttpServletRequest request=ServletActionContext.getRequest();
		ActionContext context=ActionContext.getContext();
		Map<String,Object> mysession=(Map<String,Object>) context.getSession();
		//得到总页数
		int sum=Integer.parseInt((String) mysession.get("sumye"));
		int currentp=Integer.parseInt(request.getParameter("currentp"));
		if(currentp<sum){
		context.put("xiaye",currentp+1);
		}else {
			context.put("xiaye",currentp);
		}
		if(currentp>1){
			context.put("shangye",currentp-1);
		}else{
			context.put("shangye", 1);
		}
		System.out.println("当前为第"+currentp+"页");
		List<Ppt> list=PptDao.GetFenList(currentp, 3);
		context.put("lst",list);
		return "pptlist";
	}
	public static String adminShowList(){
		ActionContext context=ActionContext.getContext();
		List<Ppt> lst=PptDao.GetPptList();
		context.put("lst",lst);
		return "pptlist";
	}
	public String deletePpt(){
		PptDao.delppt(id);
		ActionContext context=ActionContext.getContext();
		List<Ppt> lst=PptDao.GetPptList();
		context.put("lst",lst);
		return "pptlist";
	}
	public String savePpt(){
		//文件名upptFileName；
		if(uppt!=null){
			String dataDir="G:\\Java\\Hibernate\\MySe\\WebContent\\image";
			File savedFile=new File(dataDir,upptFileName);
			uppt.renameTo(savedFile);
			
			//上传完成执行保存操作
			Ppt ppt=new Ppt();
			ppt.setName(upptFileName);
			ppt.setPath("\\image\\"+upptFileName);
			Calendar calendar=Calendar.getInstance();
			int year=calendar.get(Calendar.YEAR);
			int mouth=calendar.get(Calendar.MONTH);
			int day=calendar.get(Calendar.DATE);
			ppt.setDate(year+"/"+mouth+"/"+day);
			PptDao.saveppt(ppt);
		}
		ActionContext context=ActionContext.getContext();
		List<Ppt> lst=PptDao.GetPptList();
		context.put("lst",lst);
		return "pptlist";
	}
	public String addPpt(){
		return "addppt";
	}
	

}
