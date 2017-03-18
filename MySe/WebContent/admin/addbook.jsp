<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
     body {
	         margin-left: 3px;
	         margin-top: 5px;
	         margin-right: 3px;
	         margin-bottom: 0px;
      }
      .style1 {
	       color: #e1e2e3;
	       font-size: 12px;
      }
    </style>
</head>
<body>
<s:form action="referbook.action" enctype="multipart/form-data" method="post">
<table width="100%">
<tr bgcolor="#353c44">
	<td colspan="2" align="left">
		<div class="style1">添加书籍</div>
	</td>
</tr>
<tr height="50px">
	<td width="50%" align="right">
		参考书籍名称：
	</td>
	<td width="50%" align="left">
		<s:textfield name="name" theme="simple" ></s:textfield>
	</td>
</tr>
<tr height="100px">
	<td width="50%" align="right">
		书籍文本：
	</td>
	<td width="50%" align="left">
		<s:file name="pic" label="选择文件" theme="simple"></s:file>
	</td>
</tr>
<tr height="70px">
	<td width="50%" align="right">
		描述：
	</td>
	<td width="50%" align="left">
		<s:textarea name="description" theme="simple" style="width:400px;height:50px"></s:textarea>
	</td>
</tr>	
<tr>
	<td colspan="2" align="center">
		<s:submit value="提交" theme="simple" method="saveBook"/>
	</td>
</tr>
</table>
</s:form>
</body>
</html>