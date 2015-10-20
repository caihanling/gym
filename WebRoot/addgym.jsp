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
    
    <title>My JSP 'addgym.jsp' starting page</title>
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
   <form action="gym!addGym.action" method="post">
   	<table align="center">
   		<tr>
   			<td>体育馆名称：</td>
   			<td colspan="4"><input type="text" name="gname"></td>
   		</tr>
   		<tr>
   			<td>体育馆地址：</td>
   			<td colspan="4"><input type="text" name="glocal"></td>
   		</tr>
   		<tr>
   			<td>体育馆号码</td>
   			<td colspan="4"><input type="text" name="gphone"></td>
   		</tr>
   		<tr>
   			<td>体育馆图片</td>
   			<td colspan="4"><input type="text" name="gpic" value="img/gym1.jpg"></td>
   		</tr>
   		<tr>
   			<td>提供服务</td>
   			<td><input type="checkbox" name="server" value="免费wifi">免费wifi</td>
   			<td><input type="checkbox" name="server" value="可淋浴">可淋浴</td>
   			<td><input type="checkbox" name="server" value="储物间">储物间</td>
   			<td><input type="checkbox" name="server" value="停车场">停车场</td>
   		</tr>
   		<tr>
   			<td></td>
   			<td><input type="checkbox" name="server" value="私人教练">私人教练</td>
   			<td><input type="checkbox" name="server" value="有售配件">有售配件</td>
   			<td><input type="checkbox" name="server" value="有租配件">有租配件</td>
   			<td><input type="checkbox" name="server" value="有售饮品">有售饮品</td>
   		</tr>
   		<tr>
   			<td><input type="submit" value="提交"></td>
   			<td><input type="reset" value="重置"></td>
   		</tr>
   	</table>
   </form>
  </body>
</html>
