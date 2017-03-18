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
<s:iterator var="book" value="#lst">
	<div id="banner">
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr height="180px" valign="top">
				<td align="left">
					<table width="100%" height="100%" border="0" align="center"
					cellpadding="0" cellspacing="0">
						<tr height="40px">
							<td width="100px">书籍名称：</td>
							<td>
								<s:property value="#book.name"/>
							</td>
						</tr>
						<tr>
							<td valign="top">内容介绍：</td>
							<td valign="top">
								<s:property value="#book.description"/>
							</td>
						</tr>
					</table>
				</td>
				<td width="200px">
					<img src="<s:property value='#book.path'/>"
					width="200px" height="150px">
				</td>
			</tr>
		</table>
	</div>
</s:iterator>
</body>
</html>