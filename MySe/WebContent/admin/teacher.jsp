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
<table width="100%">
	<tr>
		<td colspan="2">
			教师信息：
		</td>
	</tr>
	<tr>
		<td align="right">
			教师姓名：
		</td>
		<td align="left">
			<s:property value="#teacher.name"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			性别：
		</td>
		<td align="left">
			<s:property value="#teacher.sex"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			学位：
		</td>
		<td align="left">
			<s:property value="#teacher.degree"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			地位：
		</td>
		<td align="left">
			<s:property value="#teacher.position"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			教育背景：
		</td>
		<td align="left">
			<s:property value="#teacher.eduBackground"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			学院：
		</td>
		<td align="left">
			<s:property value="#teacher.college"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			地址：
		</td>
		<td align="left">
			<s:property value="#teacher.address"></s:property>
		</td>
	</tr>
	<tr>
		<td align="right">
			研究方向：
		</td>
		<td align="left">
			<s:property value="#teacher.direction"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			简介：
		</td>
		<td align="left">
			<s:property value="#teacher.intro"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			学术成就：
		</td>
		<td align="left">
			<s:property value="#teacher.achievement"/>
		</td>
	</tr>
	<tr>
		<td align="right">
			照片：
		</td>
		<td align="left">
			<img src="<s:property value='#teacher.photo'/>" height="110px" width="140px"/>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="2">
			<s:a action="adminteacher" method="correct">
				修改
				<s:param name="teacherid" value="#teacher.id"/>
			</s:a>
		</td>
	</tr>
</table>
</body>
</html>