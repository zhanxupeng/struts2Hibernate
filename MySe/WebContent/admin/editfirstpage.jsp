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
<s:form action="firstPage" name="frm">
	<table width="100%" border="0" align="center" cellpadding="0"
	cellspacing="1" bgcolor="#ele2e3">
		<tr height="100px">
			<td bgcolor="#ffffff" width="10%" align="right">
				修改内容：
			</td>
			<td bgcolor="#ffffff">
				<s:textarea value="%{#request.firstspage.description}"
				name="content" theme="simple" id="txtarea" cols="200" rows="10"></s:textarea>
			</td>
		</tr>
		<tr>
			<td bgcolor="#ffffff" colspan="2" align="center">
				<s:submit method="saveFirstpage" value="提交"/>
			</td>
		</tr>
	</table>
</s:form>
</body>
</html>