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
<table width="100%" height="1000px">
<tr>
	<td colspan="2">
		<img src="../image/beijing.jpg"/>
	</td>
</tr>
<tr height="100%">
	<td width="50px">
			<iframe height="100%" width="100%" frameborder="1" src="left.jsp"
				name="leftFrame" id="leftFrame" title="leftFrame"></iframe>
	</td>
	<td width="100%">
			<iframe height="100%" width="100%" frameborder="1" src="welcome.jsp"
				name="rightFrame" id="rightFrame" title="rightFrame"></iframe>
	</td>
</table>
</body>
</html>