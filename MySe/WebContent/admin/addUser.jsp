<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		var num=document.getElementById("num");
		if(num.value==""){
			alert("学号不能为空");
			return false;
		}
		var name=document.getElementById("name");
		if(name.value==""){
			alert("姓名不能为空");
			return false;
		}
		var pwd=document.getElementById("pwd");
		if(pwd.value==""){
			alert("密码不能为空");
			return false;
		}
		var repwd=document.getElementById("repwd");
		if(repwd.value!=pwd.value){
			alert("两次密码不一样");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<s:form action="useraction" theme="simple">
	<table width="100%" border="0" cellpadding="0" cellspacing="1"
		bgcolor="#a8c7ce">
		<tr height="50px">
			<td bgcolor="#ffffff" align="center" width="60px">
				学号：
			</td>
			<td bgcolor="#ffffff" width="60px">
				<s:textfield name="num" id="num" theme="simple"></s:textfield>
			</td>
		</tr>
		<tr>
			<td bgcolor="#ffffff" align="center" width="150px">
				姓名：
			</td>
			<td bgcolor="#ffffff" width="150px">
				<s:textfield name="name" id="name" theme="simple">
				</s:textfield>
			</td>
		</tr>
		<tr>
			<td bgcolor="#ffffff" align="center" width="200px">
				密码：
			</td>
			<td bgcolor="#ffffff" width="200px">
				<s:password name="pwd" id="pwd" theme="simple"></s:password>
			</td>
		</tr>
		<tr>
			<td bgcolor="#ffffff" align="center" width="200px">
				重复密码:
			</td>
			<td bgcolor="#ffffff" width="200px">
				<s:password name="repwd" id="repwd" theme="simple"></s:password>
			</td>
		</tr>
		<tr height="50px">
			<td colspan="2" bgcolor="#ffffff" align="center">
				<s:submit value="提交" method="addUser" theme="simple" onclick="return check();">
				</s:submit>
			</td>
		</tr>
	</table>
</s:form>
</body>
</html>