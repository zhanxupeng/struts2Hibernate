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
	<tr>
		<td></td>
		<td></td>
		<td bgcolor="#a8c7ce" align="right">
			<s:a action="firstPage" method="modifyfirstpage">
				修改主页文本内容
				<s:param name="id">1</s:param>
			</s:a>
		</td>
	</tr>
	<tr>
		<td bgcolor="#d3eaef" align="center" width="600" colspan="3">
			内容
		</td>
	</tr>
	<tr>
		<td bgcolor="#ffffff" align="left" rowspan="10" valign="top" colspan="3">
			<s:property value="firstspage.description"></s:property>
		</td>
	</tr>
</table>
</body>
</html>