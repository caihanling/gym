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
    			<td colspan="2" align="center">������Ŀ����</td>
    		</tr>
    		<tr>
    			<td>������Ŀ����</td>
    			<td>
    				<select name="pcategory">
    					<option value="ƹ����">ƹ����</option>
    					<option value="��ë��">��ë��</option>
    					<option value="����">����</option>
    					<option value="����">����</option>
    					<option value="����">����</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>������Ŀ����</td>
    			<td><input type="text" name="pname" value="����ƹ����1�ų��أ�"></td>
    		</tr>
    		<tr>
    			<td>�۸�Ԫ/ʱ��</td>
    			<td><input type="text" name="price"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
