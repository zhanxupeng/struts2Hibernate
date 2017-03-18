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
<s:form action="referbook" enctype="multipart/form-data" method="post">
	<table width="100%">
		<tr>
			<td align="right" width="50%">
				名称：
			</td>
			<td align="left" width="50%">
				<s:textfield name="mname" value="%{#request.mybook.name}" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr>
			<td align="right" width="50%">
				图片：
			</td>
			<td align="left" width="50%">
				<img src="<s:property value='%{#request.mybook.path}'/>" width="150px" height="110px" />
				<s:file name="pic" label="选择文件" theme="simple"/>
			</td>
		</tr>
		<tr>
			<td align="right" width="50%">
				内容：
			</td>
			<td align="left" width="50%">
				<s:textarea name="mdescription" value="%{#request.mybook.description}"
				theme="simple" style="width:200px;height:50px"></s:textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<s:hidden name="mid" value="%{#request.mybook.id}"></s:hidden>
				<s:submit value="提交" method="saveModifyBook" theme="simple"></s:submit>
			</td>
		</tr>
	</table>
</s:form>
</body>
</html>