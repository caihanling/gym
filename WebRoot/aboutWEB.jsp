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
    
    <title>My JSP 'aboutWEB.jsp' starting page</title>
    
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
		margin-left: 165px;
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
	    			<td><a href="login.jsp">登录/</a></td>
	    			<td><a href="register.jsp">现在去注册？</a></td>
	    		</tr>
	    	</table>
	    </c:if>
    	<c:if test="<%=!isNull%>">
	    	<table>
	    		<tr>
	    			<td><a href="#">欢迎您，用户：${getuser.uname}/</a></td>
	    			<td><a href="users!exit.action">[退出]</a></td>
	    		</tr>
	    	</table>
	    </c:if>
   	</div>
   	<div id="dTop2" align="center">
   		<img src="img/1.PNG">
   	</div>
   	
   	
   	<div id="dNavi">
   		<ul>
   			<li><a href="gym!findAllGym.action">查看场馆</a></li>
   			<li><a href="findAllPro.jsp">查找项目</a></li>
   			<li><a href="QA.jsp">Q&A</a></li>
   			<li><a href="aboutWEB.jsp">关于网站</a></li>
   			<li><a href="manager.jsp">后台管理</a></li>
   		</ul>
   	</div>
   	<div id="dContent" style="width: 950px;margin-left: 195px; margin-top: 25px;">
  <h3>
	&nbsp;&nbsp;随着人们对健康的重视，越来越多的人选择去体育馆健身，但是体育器材和场所是有限的。
	如何最大化的利用这些多功能体育馆来满足人们的需求，是一个迫切需要解决的问题。<br>
	&nbsp;&nbsp;基于web的多功能体育场馆预订服务，可以足不出户就成功预订体育场馆。本套系统可以查询到各大体育场馆，以及各个体育场馆的运动器材和提供的服务。
	预订准确的时间段，可以节约人们的时间，提高体育馆的运作效率。用户在注册或登录后就可以进行一系列的操作，而管理员可以后台登录，
	对系统进行更新和维护。最终实现了预订服务的智能化。<br>
	&nbsp;&nbsp;目前同类的研究还处于起步阶段，已经上线的预订网站，很多人性化的功能已经实现，可以满足需要锻炼的人的需求。但是网站使用率还不是特别高，还有一些不足之处，所以未来的发展前景很大。
	本套系统的特点就是给日益忙碌的人们提供最大的方便，用最短的时间寻找到最合适的锻炼地点，进一步的推广全民运动。<br>
  </h3>
  </div>
  </body>
</html>
