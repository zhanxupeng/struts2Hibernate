package com.action;

import java.io.File;

import com.dao.TeacherDao;
import com.model.Teacher;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class TeacherAction extends ActionSupport implements ModelDriven<Teacher>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File uploadPhoto;//用户上传的照片文件
	private String uploadPhotoFileName;//上传文件的文件名
	public File getUploadPhoto() {
		return uploadPhoto;
	}
	public void setUploadPhoto(File uploadPhoto) {
		this.uploadPhoto = uploadPhoto;
	}
	public String getUploadPhotoFileName() {
		return uploadPhotoFileName;
	}
	public void setUploadPhotoFileName(String uploadPhotoFileName) {
		this.uploadPhotoFileName = uploadPhotoFileName;
	}
	private Teacher teacher=new Teacher();
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public String getTeacher() throws Exception{
		ActionContext context=ActionContext.getContext();//request类型
		Teacher teacher=TeacherDao.getTeacher();
		context.put("teacher",teacher);
		return SUCCESS;
	}
	public String correctTeacher() throws Exception{
		teacher.setId(1);
		teacher.setPhoto("../image/"+uploadPhotoFileName);
		if(uploadPhoto==null)
			return "error"; 
		File picFile=new File("G:\\Java\\Hibernate\\MySe\\WebContent\\image",uploadPhotoFileName);
		uploadPhoto.renameTo(picFile);
		//跟新数据库
		TeacherDao.InsertTeacher(teacher);
		ActionContext context=ActionContext.getContext();
		System.out.println(teacher.getPhoto());
		context.put("teacher",teacher);
		return SUCCESS;
	}
	public String correct() throws Exception{
		return "correct";
	}
	@Override
	public Teacher getModel() {
		// TODO Auto-generated method stub
		return teacher;
	}
}
