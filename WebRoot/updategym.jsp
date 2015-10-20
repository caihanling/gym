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
    
    <title>My JSP 'updategym.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <style>
  #dLeft{
  	float: left;
  	width: 200px;
  	background-color:#6699CC;
  }
  #dRight{
  	float: left;
  	width: 1000px;
  }
  a{
  	text-decoration: none;
  	color: black;
  }
  </style>
   <script language="javascript">
  	function display(obj){
  		if(document.getElementById(obj).style.display == "none"){
  			document.getElementById(obj).style.display="block";
  		}else{
  			document.getElementById(obj).style.display="none";

  		}
  	}
  	
  	function hand(obj){
  		obj.style.cursor = "pointer";
  	}
  </script>
  
  <body>
	   <div id="dLeft">
		    <div onclick="display('d1')" onmousemove="hand(this)" style="width:160px;"><b>�����ݹ���</b></div>
		  	<div id="d1" style="display:none">
		  		<a href="addgym.jsp">���������</a><br/>
		    	<a href="gym!findAllGym1.action">�������޸�</a><br/>
		  	</div>
		  	
		  	<div onclick="display('d2')" onmousemove="hand(this)" style="width:160px;"><b>��Ŀ����</b></div>
		  	<div id="d2" style="display:none">
		  		<a href="">��Ŀ���</a><br/>
		    	<a href="">��Ŀ�޸�</a><br/>
		  	</div>
		  	
		  	<div onclick="display('d3')" onmousemove="hand(this)" style="width:160px;"><b>��վ����</b></div>
		  	<div id="d3" style="display:none">
		  		<a href="">��Ϣ���</a><br/>
		    	<a href="">��Ϣ�޸�</a><br/>
		  	</div>
	
	    </div>
	    <div id="dRight">
	     <table border="1" align="center">
	   
		   	<c:forEach var="gym" items="${list}">
			   	<tr>
			   		<td id="gname">${gym.gname }</td>
			   		<td id="glocal">��ַ��${gym.glocal }</td>
			   		<td id="gphone">�绰��${gym.gphone }</td>
			   		<td><a href="gym!findById.action?gymnasium.gid=${gym.gid}">�޸�</a></td>
			   		<td><a href="#">ɾ��</a></td>
				</tr>
		   
	   		</c:forEach>
	
	   </table>
	  </div>
  </body>
</html>
