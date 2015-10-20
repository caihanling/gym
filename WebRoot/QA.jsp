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
    
    <title>My JSP 'QA.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
	body{
		right:auto;
		left:auto;
		width:auto;
		height:auto;
		margin:auto;
		}
	#dTop1{
		margin-right: 90px;
	}
	#dNavi{
		margin-left: 174px;
		background-color: #6699CC;
		height: 50px;
		width: 1019px;
		margin-top: -16px;
	}
	
	ul li{
		list-style-type:none;
		float:left;
		padding-left:65px;
		font:100;
		margin-top: 10px;
	}
	ul li a{
		margin-left: 35px;
		font-weight: bolder;
		font-size: 19px;
	}
	a{
		text-decoration: none;
		color:#000000; 
	}
	</style>
  </head>
  
  <body>
<%	
	boolean isNull = false;
	if(session.getAttribute("getuser") == null) {
		isNull = true;
	}
%>
  	<div id="dTop1" align="right">
   		<c:if test="<%=isNull %>">
	    	<table>
	    		<tr>
	    			<td><a href="login.jsp">��¼/</a></td>
	    			<td><a href="register.jsp">����ȥע�᣿</a></td>
	    		</tr>
	    	</table>
	    </c:if>
    	<c:if test="<%=!isNull%>">
	    	<table>
	    		<tr>
	    			<td><a href="#">��ӭ�����û���${getuser.uname}/</a></td>
	    			<td><a href="users!exit.action">[�˳�]</a></td>
	    		</tr>
	    	</table>
	    </c:if>
   	</div>
   	<div id="dTop2" align="center">
   		<img src="img/1.PNG">
   	</div>
   	
   	
   	<div id="dNavi">
   		<ul>
   			<li><a href="gym!findAllGym.action">�鿴����</a></li>
   			<li><a href="findAllPro.jsp">������Ŀ</a></li>
   			<li><a href="QA.jsp">Q&A</a></li>
   			<li><a href="aboutWEB.jsp">������վ</a></li>
   			<li><a href="manager.jsp">��̨����</a></li>
   		</ul>
   	</div>
   	<div id="dContent" style="margin-top: 20px;">
    <table align="center">
    	<tr>
    		<td>Q : ���û��ע����ߵ�¼���Խ���Ԥ����</td>
    	</tr>
    	<tr>
    		<td>A : ���ã�û��ע����ߵ�¼�����Խ���Ԥ��</td>
    	</tr>
    	<tr height="5px;"></tr>
    	<tr>
    		<td>Q : ���������������ô�죿</td>
    	</tr>
    	<tr>
    		<td>A : ���ã�������ϵ����Ա</td>
    	</tr>
    	<tr height="5px;"></tr>
    	<tr>
    		<td>Q : Ԥ������Ҫ�����</td>
    	</tr>
    	<tr>
    		<td>A : ���ã�Ԥ�����ǲ���Ҫ�����</td>
    	</tr>
    </table>
    </div>
  </body>
</html>
