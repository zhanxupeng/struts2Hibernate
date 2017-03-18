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
<s:form action="log" method="post" theme="simple">
	用户名：
	<s:textfield name="no" size="8" theme="simple"></s:textfield>
	<br>
	<br>
	密码：
	<s:password name="pwd" size="8" theme="simple"/>
	<br>
	<font color="#ff0000" size="2">错误，请重新登录</font>
	<br>
	<sx:submit value="登录" method="login" targets="login"/>
	&nbsp;&nbsp;
	<INPUT type="reset" value="取消" name="Submit">
</s:form>
</body>
</html>