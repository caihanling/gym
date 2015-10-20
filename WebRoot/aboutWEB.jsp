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
   	<div id="dContent" style="width: 950px;margin-left: 195px; margin-top: 25px;">
  <h3>
	&nbsp;&nbsp;�������ǶԽ��������ӣ�Խ��Խ�����ѡ��ȥ�����ݽ��������������ĺͳ��������޵ġ�
	�����󻯵�������Щ�๦�����������������ǵ�������һ��������Ҫ��������⡣<br>
	&nbsp;&nbsp;����web�Ķ๦����������Ԥ�����񣬿����㲻�����ͳɹ�Ԥ���������ݡ�����ϵͳ���Բ�ѯ�������������ݣ��Լ������������ݵ��˶����ĺ��ṩ�ķ���
	Ԥ��׼ȷ��ʱ��Σ����Խ�Լ���ǵ�ʱ�䣬��������ݵ�����Ч�ʡ��û���ע����¼��Ϳ��Խ���һϵ�еĲ�����������Ա���Ժ�̨��¼��
	��ϵͳ���и��º�ά��������ʵ����Ԥ����������ܻ���<br>
	&nbsp;&nbsp;Ŀǰͬ����о��������𲽽׶Σ��Ѿ����ߵ�Ԥ����վ���ܶ����Ի��Ĺ����Ѿ�ʵ�֣�����������Ҫ�������˵����󡣵�����վʹ���ʻ������ر�ߣ�����һЩ����֮��������δ���ķ�չǰ���ܴ�
	����ϵͳ���ص���Ǹ�����æµ�������ṩ���ķ��㣬����̵�ʱ��Ѱ�ҵ�����ʵĶ����ص㣬��һ�����ƹ�ȫ���˶���<br>
  </h3>
  </div>
  </body>
</html>
