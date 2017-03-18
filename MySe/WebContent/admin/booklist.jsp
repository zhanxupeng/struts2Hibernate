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
<table width="100%">
<tr bgcolor="#353c44">
	<td colspan="5" align="left">
		<div class="style1">参考书籍：</div>
	</td>
</tr>
<tr>
	<td colspan="5" align="right">
		<s:a action="referbook" method="gotoAddBook">添加</s:a>
	</td>
</tr>
<tr>
	<td align="center" width="20%">
		编号
	</td>
	<td align="center" width="20%">
		名称
	</td>
	<td align="center" width="20%">
		图片
	</td>
	<td align="center" width="20%">
		内容
	</td>
	<td align="center" width="20%">
		操作
	</td>
</tr>
<s:iterator var="book" value="list">
	<tr>
		<td align="center" width="20%">
			<s:property value="#book.id"/>
		</td>
		<td align="center" width="20%">
			<s:property value="#book.name"/>
		</td>
		<td align="center" width="20%">
			<img src="<s:property value='#book.path'/>" height="150px" width="150px"/>
		</td>
		<td width="20%" align="center">
			<s:property value="#book.description"/>
		</td>
		<td width="20%" align="center">
			<s:a action="referbook" method="modifyBook">
				修改
			<s:param name="cid" value="#book.id"/>	              
			</s:a>	
			|
			<s:a action="referbook" method="deleteBook">
				删除
			<s:param name="id" value="#book.id"/>
			</s:a>
		</td>
	</tr>		
</s:iterator>
</table>
</body>
</html>