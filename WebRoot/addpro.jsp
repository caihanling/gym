<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addpro.jsp' starting page</title>
    
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
    <form>
    	<table>
    		<tr>
    			<td colspan="2" align="center">新增项目场地</td>
    		</tr>
    		<tr>
    			<td>体育项目种类</td>
    			<td>
    				<select name="pcategory">
    					<option value="乒乓球">乒乓球</option>
    					<option value="羽毛球">羽毛球</option>
    					<option value="篮球">篮球</option>
    					<option value="足球">足球</option>
    					<option value="网球">网球</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>体育项目名称</td>
    			<td><input type="text" name="pname" value="例：乒乓球（1号场地）"></td>
    		</tr>
    		<tr>
    			<td>价格（元/时）</td>
    			<td><input type="text" name="price"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
