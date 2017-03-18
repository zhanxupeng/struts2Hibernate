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
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
	<tr height="50px">
		<td bgcolor="#d3eaef" align="right" colspan="4">
			<div style="margin-right:20px;">
				<s:a action="useraction" method="toAddUser">
					添加用户
				</s:a>
			</div>
		</td>
	</tr>
	<tr>
		<td bgcolor="#d3eaef" align="center">
			编号
		</td>
		<td bgcolor="#d3eaef" align="center" width="200px">
			学号
		</td>
		<td bgcolor="#d3eaef" align="center">
			名字
		</td>
		<td bgcolor="#d3eaef" align="center">
			操作
		</td>
		<s:iterator var="user" value="users">
			<tr>
				<td bgcolor="#ffffff" align="center">
					<s:property value="#user.id"/>
				</td>
				<td bgcolor="#ffffff" align="center">
					<s:property value="#user.num"></s:property>
				</td>
				<td bgcolor="#ffffff" align="center">
					<s:property value="#user.name"></s:property>
				</td>
				<td bgcolor="#ffffff" align="center">
					<s:a action="useraction" method="delUser">
						删除
						<s:param name="id">${user.id }</s:param>
					</s:a>
				</td>
			</tr>
		</s:iterator>	
</table>
</body>
</html>