<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateuser.jsp' starting page</title>
    
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
  
    <table align="center">
    	<tr>
    		<td>用户id</td>
    		<td>用户名</td>
    		<td>密码</td>
    		<td>修改</td>
    		<td>删除：</td>
    	</tr>
	    <c:forEach items="${userlist}" var="user">
	    <c:if test="${user.state == 0}"><!-- 只显示用户，不显示管理员 -->
	    	<tr>
	    		<td><input type="text" name="userid" value="${user.userid}" disabled="disabled"></td>
	    		<td><input type="text" name="uname" value="${user.uname}"></td>	    		
	    		<td><input type="text" name="upass" value="${user.upass}"></td>
	    		<td><a href="updateuser.jsp?user=${user}">修改</a></td>
    			<td><a href="#">删除</a></td>
	    	</tr>
	    </c:if>
	    </c:forEach>
    </table>
  </body>
</html>
