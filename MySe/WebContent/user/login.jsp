<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div style="float:left;">
	<table id="UserLogon" border="0" cellpadding="0" cellspacing="0"
		width="100%">
			<tr>
				<td align="center" VALIGN="top">
					<table border="0" cellpadding="0" cellspacing="0" width="161" height="110">
					<tr>
						<td width="172" height="110">
						
							<s:form action="log" method="post" theme="simple">
									用户名：
								<s:textfield name="no" size="8" theme="simple"></s:textfield>
								<br>
								<br>
									密码：&nbsp;
								<s:password name="pwd" size="8" theme="simple"/>
								<br>
								<br>
								<sx:submit value="登录" method="login" targets="login"/>
								&nbsp;&nbsp;
								<INPUT type="reset" value="取消" name="Submit">
							</s:form>
						
						</td>
					</tr>
					</table>
				</td>
			</tr>
		</table>
</div>

</body>
</html>