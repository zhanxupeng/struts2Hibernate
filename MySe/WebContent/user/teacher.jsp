<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td>
	<table border="0" cellpadding="0" cellspacing="0">
		<tr height="40px">
			<td width="100px">
				<font color="#003399">姓名：</font>
			</td>
			<td>
				<s:property value="#teacher.name"/>
			</td>
		</tr>
		<tr height="40px">
			<td>
				<font color="#003399">性别：</font>
			</td>
			<td>
				<s:property value="#teacher.sex"/>
			</td>
		</tr>
		<tr height="40px">
			<td>
				<font color="#003399">职位：</font>
			</td>
			<td>
				<s:property value="#teacher.position"/>
			</td>
		</tr>
		<tr height="40px">
			<td>
				<font color="#003399">教育背景：</font>
			</td>
			<td>
				<s:property value="#teacher.eduBackground"/>
			</td>
		</tr>
		<tr height="40px">
			<td>
				<font color="#003399">学院：</font>
			</td>
			<td>
				<s:property value="#teacher.college"/>
			</td>
		</tr>
		<tr height="40px">
			<td>
				<font color="#003399">学院：</font>
			</td>
			<td>
				<s:property value="#teacher.college"/>
			</td>
		</tr>
		<tr height="40px">
			<td>
				<font color="#003399">联系地址：</font>
			</td>
			<td>
				<s:property value="#teacher.address"/>
			</td>
		</tr>
	</table>
	</td>
	<td valign="top">
		<!-- 显示照片 -->
		<img src="<s:property value='#teacher.photo'/>" width="180px" height="180px">
	</td>
</tr>
<tr>
	<td colspan="2">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr height="40px">
				<td width="100px">
					<font color="#003399">简介：</font>
				</td>
				<td>
					<s:property value="#teacher.intro"/>
				</td>
			</tr>
			<tr height="40px">
				<td>
					<font color="#003399">学术成就：</font>
				</td>
				<td>
					<s:property value="#teacher.achievement"/>
				</td>
			</tr>
			<tr height="40px">
				<td>
					<font color="#003399">研究方向：</font>
				</td>
				<td>
					<s:property value="#teacher.direction"/>
				</td>
		</table>
	</td>
</tr>
</table>
</body>
</html>