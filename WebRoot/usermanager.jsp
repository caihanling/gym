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
    		<td>�û�id</td>
    		<td>�û���</td>
    		<td>����</td>
    		<td>�޸�</td>
    		<td>ɾ����</td>
    	</tr>
	    <c:forEach items="${userlist}" var="user">
	    <c:if test="${user.state == 0}"><!-- ֻ��ʾ�û�������ʾ����Ա -->
	    	<tr>
	    		<td><input type="text" name="userid" value="${user.userid}" disabled="disabled"></td>
	    		<td><input type="text" name="uname" value="${user.uname}"></td>	    		
	    		<td><input type="text" name="upass" value="${user.upass}"></td>
	    		<td><a href="updateuser.jsp?user=${user}">�޸�</a></td>
    			<td><a href="#">ɾ��</a></td>
	    	</tr>
	    </c:if>
	    </c:forEach>
    </table>
  </body>
</html>
