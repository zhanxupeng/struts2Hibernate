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
<table>
<tr>
	<td>
	<s:a href="firstPage!adminShowFirstPage.action" target="rightFrame">首页管理</s:a>
	</td>
</tr>
<tr>
	<td>
	<s:a href="useraction!showUserList.action" target="rightFrame">用户管理</s:a>
	</td>
</tr>
<tr>
	<td>
	<s:a href="adminteacher!getTeacher.action" target="rightFrame">教师管理</s:a>
	</td>
</tr>
<tr>
	<td>
	<s:a href="adminppt!adminShowList.action" target="rightFrame">课件管理</s:a>
	</td>
</tr>
<tr>
	<td>
	<s:a href="referbook!showBookList.action" target="rightFrame">书籍管理</s:a>
	</td>
</tr>
</table>
</body>
</html>