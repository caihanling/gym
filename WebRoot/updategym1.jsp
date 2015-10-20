<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updategym1.jsp' starting page</title>
    
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
   <body>
	   <div id="dLeft">
		    <div onclick="display('d1')" onmousemove="hand(this)" style="width:160px;"><b>体育馆管理</b></div>
		  	<div id="d1" style="display:none">
		  		<a href="addgym.jsp">体育馆添加</a><br/>
		    	<a href="gym!findAllGym1.action">体育馆修改</a><br/>
		  	</div>
		  	
		  	<div onclick="display('d2')" onmousemove="hand(this)" style="width:160px;"><b>项目管理</b></div>
		  	<div id="d2" style="display:none">
		  		<a href="">项目添加</a><br/>
		    	<a href="">项目修改</a><br/>
		  	</div>
		  	
		  	<div onclick="display('d3')" onmousemove="hand(this)" style="width:160px;"><b>网站管理</b></div>
		  	<div id="d3" style="display:none">
		  		<a href="">信息添加</a><br/>
		    	<a href="">信息修改</a><br/>
		  	</div>
	
	    </div>
	    <div id="dRight">
	    <form action="gym!updateGym.action" method="post" lang="gb18030" accept-charset="gb18030" >
	    	<table align="center" border="1">
	    		<tr>
	    			<td>体育场馆名称：</td>
	    			<td><input type="text" name="gname" value="${getgymnasium.gname }"></td>
	    		</tr>
	    		<tr>
	    			<td>体育场馆地址：</td>
	    			<td><input type="text" name="glocal" value="${getgymnasium.glocal }"></td>
	    		</tr>
	    		<tr>
	    			<td>体育场馆电话：</td>
	    			<td><input type="text" name="gphone" value="${getgymnasium.gphone }"></td>
	    		</tr>
	    		<tr>
	    			<td>提供服务：</td>
	    			<td>${getgymnasium.server }</td>
	    		</tr>
	    		<tr>
	    			<td>体育场馆全景：</td>
	    			<td><img src="${getgymnasium.gpic }"></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="right"><input type="submit" value="提交"></td>
	    		</tr>
	    	</table>
	    </form>
    </div>
  </body>
</html>
