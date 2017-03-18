<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
<sx:head/>
<script type="text/javascript">
	function checklogin(){
		var user=document.getElementById("user");
		if(user==null)
		{
			alert("请先登录");
			return false;
		}
		return true;
	}
	window.onload=function showfirst()
	{
		var first=document.getElementById("first");
		first.click();
	}
</script>
</head>
<body style="margin-top:0px;" bgcolor="#c0c0ff">
	<div id="top">
		<table width="772" border="0" height="79" 
		align="center" cellpadding="0" cellspacing="0"
		bgcolor="#a8c7ce">
		<tr>
			<td width="68" align="center">
				<s:a target="rightFrame" action="firstPage.action" id="first">
					首页
				</s:a>
			</td>
			<td width="80" align="center">
				<s:a target="rightFrame" action="userteacher!getTeacher.action">
					教师介绍
				</s:a>
			</td>
			<td width="80" align="center">
				<s:a target="rightFrame" action="referbook!userShowBookList">
					相关书籍
				</s:a>
			</td>
			<td width="78" align="center">
				<s:a target="rightFrame" action="userppt!fenYeShow.action">
					电子教程
				</s:a>
			</td>
		</tr>
		</table>
	</div>
	<div id="status">
		<table align="center" border="0" width="773" cellspacing="0" cellpadding="0"
			height="31">
				<tr>
					<td width="595">
						<p align="left">
							欢迎访问软件工程学习网站！</p>
					</td>
					<td width="183">
						<p align="center"/>
					</td>
				</tr>
			</table>
	</div>
	<div id="main">
		<table border="0" cellpadding="0" cellspacing="0" height="800px" align="center">
			<tr>
				<td  width="161px" align="left" valign="top">
				
					<div id="login">
						<jsp:include page="login.jsp"></jsp:include>
					</div>
				</td>
				<td width="612px" valign="top">
				
				<div id="right">
					<iframe id="rightFrame" src="first.jsp" name="rightFrame" width="100%" height="800px" frameborder="0" scrolling="yes"></iframe>
		
				</div>
		
				</td>
			</tr>			
		</table>
	</div>
	<div id="footer">
		<table align="center" border="0" cellpadding="0" cellspacing="0" width="100%"
			height="100%" bgcolor="#FFFFFF">
			<tr>
				<td>
					<p align="center">
						版权所有&copy;
				</p>
				</td>
			</tr>		
		</table>
	</div>
</body>
</html>