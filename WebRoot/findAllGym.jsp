<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gymshow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#gname{
		text-align: center;
		font-weight: bolder;
		font-size: 21px;
	}
	#glocal,#gphone{
		padding-left: 30px;
	}
	</style>
	<script>
		

	</script>
  </head>
  
  <body>
   <table border="1" align="center">
   
   	<c:forEach var="gym" items="${list}">
   	<tr>
   		<td rowspan="4"><a href="pro!findByGym.action?gymnasium.gid=${gym.gid}"><img src="${gym.gpic }"></a></td>
   		<td id="gname">${gym.gname }</td>
   	</tr>
   	<tr>
   		<td id="glocal">地址：${gym.glocal }</td>
   	</tr>
   	<tr>
   		<td id="gphone">电话：${gym.gphone }</td>
   	</tr>
   	<tr>
   		<td>${gym.server }</td>
   	</tr>
   	<tr height="20px">
   	<td></td>
   		<td><input type="checkbox" name="server" value="免费wifi">免费wifi
		<input type="checkbox" name="server" value="可淋浴">可淋浴
		<input type="checkbox" name="server" value="储物间">储物间
		<c:if test="${fn:contains('${gym.server}','停车场')}">
			<input type="checkbox" name="server" value="停车场" checked="checked">停车场
		</c:if>
		<c:out value="${fn:contains('${gym.server}','停车场')}"></c:out>

		<input type="checkbox" name="server" value="私人教练">私人教练
		<input type="checkbox" name="server" value="有售配件">有售配件
		<input type="checkbox" name="server" value="有租配件">有租配件
		<input type="checkbox" name="server" value="有售饮品">有售饮品</td>
   	</tr>
   	</c:forEach>

   </table>
  </body>
</html>
