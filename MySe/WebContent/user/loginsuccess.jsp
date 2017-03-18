<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="161" height="110">
	<tr>
		<td>用户名：</td>
		<td><s:property value="#user.name"/></td>
	</tr>
	<tr>
		<td>学号：</td>
		<td><s:property value="#user.num"/></td>
	</tr>
</table>
</body>
</html>