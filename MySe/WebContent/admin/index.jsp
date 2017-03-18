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
<s:form action="admin" id="login" theme="simple">
<table width="500px" align="center">
	<tr>
		<td>
		用户名：
		</td>
		<td>
		<input type="text" name="name"/>
		</td>
	</tr>
	<tr>
		<td>
		密&nbsp;&nbsp;码：
		</td>
		<td>
		<input type="password" name="pwd"/>
		</td>
	</tr>
	<tr>
		<td>
		<s:submit method="adminLogin" value="登录"></s:submit>
		</td>
		<td>
		<input type="reset" value="重置"> 
		</td>
	</tr>
</table>
</s:form>
</body>
</html>