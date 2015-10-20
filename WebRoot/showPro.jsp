<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'badminton.jsp' starting page</title>
    
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
    	<c:forEach var="badminton" items="${list}">
    		<tr>
    			<td>${badminton.gymnasium.gname}</td>
    			<td>${badminton.pname }</td>
    			<td>${badminton.price }/Ð¡Ê±</td>
    			<td><input type="button" value="Ô¤¶©" onclick="window.location='pro!findById.action?pid=${badminton.pid}'"></td>
    		</tr>
    	</c:forEach>
    </table>
  </body>
</html>
