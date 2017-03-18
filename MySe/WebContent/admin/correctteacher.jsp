<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="adminteacher.action" enctype="multipart/form-data" method="post" id="uploadfile_id">
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#ele2e3">
		<tr>
			<td bgcolor="#ffffff" width="50%" align="right">
				教师名：
			</td>
			<td bgcolor="#ffffff" width="50%">
				<s:textfield name="name" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				性别：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="sex" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px"> 
			<td bgcolor="#ffffff" width="50%" align="right">
				学位：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="degree" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				职位：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="position" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" align="right">
				教务背景：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="eduBackground" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" align="right">
				所在学院：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="college" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				联系地址：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="address" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				学术方向：
			</td>
			<td bgcolor="#ffffff">
				<s:textfield name="direction" style="width:200" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				简介：
			</td>
			<td bgcolor="#ffffff">
				<s:textarea name="intro" style="width:200" theme="simple"/>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				学士成就：
			</td>
			<td bgcolor="#ffffff">
				<s:textarea name="achievement" style="width:200" theme="simple"/>
			</td>
		</tr>
		<tr height="50px">
			<td bgcolor="#ffffff" width="50%" align="right">
				照片(提交后照片无法显示请刷新)：
			</td>
			<td bgcolor="#ffffff">
				<s:file name="uploadPhoto" theme="simple"/>
			</td>
		</tr>
	</table>
	<table align="center">
		<tr>
		<td align="center">
		<s:submit method="correctTeacher" theme="simple" value="提交"/>
		</td>
		</tr> 	
	</table>
</s:form>
</body>
</html>