package com.action;

import java.io.File;
import java.util.List;

import com.dao.BookDao;
import com.model.Book;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BookAction extends ActionSupport implements ModelDriven<Book>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int mid;
	private String mname;
	private String mdescription;
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMdescription() {
		return mdescription;
	}
	public void setMdescription(String mdescription) {
		this.mdescription = mdescription;
	}
	private int cid;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private Book mybook=new Book();
	public Book getMybook() {
		return mybook;
	}
	public void setMybook(Book mybook) {
		this.mybook = mybook;
	}
	private String name;
	private String description;
	private File pic;//用户上传的文件
	private String picFileName;//上传文件的文件名
	private String picContentType;
	public String getPicContentType() {
		return picContentType;
	}
	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public File getPic() {
		return pic;
	}
	public void setPic(File pic) {
		this.pic = pic;
	}
	public String getPicFileName() {
		return picFileName;
	}
	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}
	private List<Book> list=null;
	public List<Book> getList() {
		return list;
	}
	public void setList(List<Book> list) {
		this.list = list;
	}
	public String userShowBookList() throws Exception{
		ActionContext context=ActionContext.getContext();
		List<Book> lst=BookDao.GetBookList();
		context.put("lst",lst);
		return "userbooklist";
	}
	public String showBookList() throws Exception{
		list=BookDao.GetBookList();
		return "booklist";
	}
	public String gotoAddBook() throws Exception{
		return "gotoaddbook";
	}
	public String saveBook() throws Exception{
		//文件名picFileName
		if(pic!=null){
			String dataDir="G:\\Java\\Hibernate\\MySe\\WebContent\\image";
			File savedFile=new File(dataDir,picFileName);
			pic.renameTo(savedFile);
			//保存至数据库
			System.out.println(picFileName+","+description);
			Book book=new Book();
			book.setName(picFileName);
			book.setDescription(description);
			book.setPath("../image/"+picFileName);
			BookDao.savebook(book);
		}
		list=BookDao.GetBookList();
		return "booklist";
	}
	public String saveModifyBook() throws Exception{
		if(pic!=null){
			String dataDir="G:\\Java\\Hibernate\\MySe\\WebContent\\image";
			File savedFile=new File(dataDir,picFileName);
			pic.renameTo(savedFile);
			//保存至数据库
			System.out.println(picFileName+","+mdescription);
			Book book=new Book();
			book.setId(mid);
			book.setName(mname);
			book.setDescription(mdescription);
			book.setPath("../image/"+picFileName);
			BookDao.updatebook(book);
		}
		list=BookDao.GetBookList();
		return "booklist";
	}
	public String deleteBook() throws Exception{
		BookDao.delBook(id);
		list=BookDao.GetBookList();
		return "booklist";
	}
	public String modifyBook() throws Exception{
		//根据id查询该变量
		System.out.println(cid);
		mybook=BookDao.toselectBook(cid);
		System.out.println(mybook.getDescription());
		return "gotomodifybook";
		
	}
	@Override
	public Book getModel() {
		// TODO Auto-generated method stub
		return mybook;
	}
}
