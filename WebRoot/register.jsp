<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="users!register.action" method="post">
    	<table align="center" border="1">
    		<tr>
    			<td>�û�����</td>
    			<td><input type="text" name="uname"></td>
    		</tr>
    		<tr>
    			<td>���룺</td>
    			<td><input type="password" name="upass"><input type="hidden" name="state" value="0"></td>
    		</tr>
    		<tr>
    			<td>�ֻ��ţ�</td>
    			<td><input type="text" name="uphone"></td>
    		</tr>
    		<tr>
    			<td>���䣺</td>
    			<td><input type="text" name="email"></td>
    		</tr>
    		<tr>
    			<td><input type="reset" value="����"></td>
    			<td><input type="submit" value="�ύ"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
