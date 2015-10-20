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
    
    <title>My JSP 'findByGym.jsp' starting page</title>
    
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
  	<c:forEach var="project" items="${list}" begin="1" end="1">
  		<tr>
  			<td>${project.gymnasium.gname }</td>
  			<td><img src="${project.gymnasium.gpic}"></td>
  		</tr>
  	</c:forEach>
   	<c:forEach var="project" items="${list}">
   		<tr>
   			<td>${project.pname }</td>
   			<td>${project.price }Ԫ/Сʱ</td>
   			<td><input type="button" value="Ԥ��" onclick="window.location='pro!findById.action?pid=${project.pid}'"></td>
   		</tr>
   	</c:forEach>
   </table>
  </body>
</html>
