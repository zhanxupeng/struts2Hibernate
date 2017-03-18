<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
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
<table width="100%" border="1">
<tr bgcolor="#353c44">
	<td colspan="2" align="left">
		<div class="style1">添加电子课件：</div>
	</td> 
</tr>
<tr>
	<td align="right" valign="middle" width="50%">
		上传课件：
	</td>
	<td align="left" valign="middle" width="50%">
		<s:form action="adminppt.action" enctype="multipart/form-data" method="post">
			<s:file name="uppt" label="选择上传"/>
			<s:submit value="上传" method="savePpt"></s:submit>
		</s:form>
	</td>
</tr>
</table>
</body>
</html>