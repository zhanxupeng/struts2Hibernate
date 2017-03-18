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
		<td colspan="5" align="left" width="100%">
			<div  class="style1">课件列表</div>
		</td>
	</tr>
	<tr>
		<td colspan="5" align="right" width="100%">
			<s:a action="adminppt"  method="addPpt">
			添加新课件
			</s:a>
		</td>
	</tr>
	<tr>
		<td  width="20%" align="center">编号</td>
		<td  width="20%" align="center">课件名称</td>
		<td  width="20%" align="center">发布时间</td>
		<td  width="20%" align="center">下载查看</td>
		<td width="20%" align="center">操作</td>
	</tr>
	<s:iterator var="ppt" value="#lst">
	<tr>
		<td width="20%" align="center">
			<s:property value="#ppt.id"/>
		</td>
		<td width="20%" align="center">
			<s:property value="#ppt.name"/>
		</td>
		<td width="20%" align="center">
			<s:property value="#ppt.date"/>
		</td>
		<td width="20%" align="center">
			<s:a action="userppt!pptDownload.action">
				下载
				<s:param name="id">${ppt.id }</s:param>
			</s:a>
		</td>
		<td width="20%" align="center">
			<s:a action="adminppt!deletePpt.action">
				删除
				<s:param name="id">${ppt.id }</s:param>
			</s:a>
		</td>
	</tr>	
	</s:iterator>
</table>
</body>
</html>