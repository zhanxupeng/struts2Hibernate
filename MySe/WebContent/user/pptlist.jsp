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
<%
int num=1;
%>
<table width="100%">
	<tr height="20px">
		<td align="center" width="300px">
			编号
		</td>
		<td align="center" width="300px">
			名称
		</td>
		<td align="center" width="300px">
			操作
		</td>
	</tr>
<s:iterator	var="ppt" value="#lst">
	<tr  height="100px">
		<td bgcolor="#ffffff" align="center"  width="300px">
			<%=num++ %>
		<td bgcolor="#ffffff" align="center"  width="300px">
			<s:property value="#ppt.name"></s:property>
		</td>
		<td bgcolor="#ffffff" align="center"  width="300px">
			<s:a action="userppt!pptDownload.action">
				下载
				<s:param name="id">${ppt.id }</s:param>
			</s:a>
		</td>
	</tr>
</s:iterator>
</table>
<table width="400px" align="center">
<tr>
<td>
<s:a href="userppt!secondFenYe.action?currentp=1">首页</s:a>
</td>
<td>
<s:a href="userppt!secondFenYe.action?currentp=%{#request.xiaye}">下一页</s:a>
</td>
<s:iterator var="pagenums" value="#session.yelist">
	<td>
	<s:a href="userppt!secondFenYe.action?currentp=%{pagenums}">
	<s:property/>
	</s:a>
	<td>
</s:iterator>
<td>
<s:a href="userppt!secondFenYe.action?currentp=%{#request.shangye}">上一页</s:a>
</td>
<td >
<s:a href="userppt!secondFenYe.action?currentp=%{#session.sumye}">
尾页
</s:a>
</td>
</tr>
</table>
</body>
</html>