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
    
    <title>My JSP 'subscribe.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script>
		function checktime(){
			var begintime = Number(document.getElementsByName("begintime").item(0).value);
			var endtime = Number(document.getElementsByName("endtime").item(0).value);
			if(begintime<0 || begintime>24 || endtime<0 || endtime>24){
				alert("��������ȷʱ��");
				return false;
			}
			if(begintime >= endtime ){
				alert("ʱ��������������������");
				return false;
			}
			return true;
		}
		
		function totalprice(){
			var begintime = Number(document.getElementsByName("begintime").item(0).value);
			var endtime = Number(document.getElementsByName("endtime").item(0).value);
			return endtime-bigintime;
		}
	</script>
	

  </head>
  
  <body>
  <c:if test="${getuser != null}">
    <form action="his!addHistory.action" method="post" onsubmit="return checktime()">
    	<table align="center" border="1">
    		<tr>
    			<td></td>
    			<td>ʹ�ó���</td>
    			<td>�շѱ�׼</td>
    			<td>��ʼʱ��</td>
    			<td>����ʱ��</td>
    			<td>�ύ</td>
    		</tr>
    		<tr>
<!--    			<td><input type="text" name="users.userid" value="451"></td>-->
				
    			<td><input type="hidden" name="project.pid" value="${project.pid }"></td>
    			<td>${project.pname }</td>
    			<td>${project.price }Ԫ/Сʱ</td>
    			<td><input type="text" name="begintime" value="8">:00</td>
    			<td><input type="text" name="endtime" value="20">:00</td>
    			<td><input type="submit" value="�ύ"></td>
    			
    			
    			
    			
    		</tr>
    	</table>
    </form>
    </c:if>
    <c:if test="${getuser == null}">
    	<h1 align="center"><a href="index.jsp">���ȵ�¼</a></h1>			
    </c:if>
  </body>
</html>
