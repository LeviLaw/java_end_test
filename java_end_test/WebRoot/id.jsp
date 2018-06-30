<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputstuinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:include page="islogin.jsp"></jsp:include>
  <body>
  	<center>
  		<form method="post" action="inputstuinfo_result.jsp">
 <table>
    <tr>
       <td height=“100”></td>
                      系统生成的唯一身份标识
    </tr>
    <tr>
            <td height=“100”></td>
        <th>姓名</th><th>六一</th><td valign="top"><br></td><th><br></th>
    </tr>
        <tr>
            <td height=“100”></td>
        <th>身份</th><th>房主</th><td valign="top"><br></td><th><br></th>
    </tr>
    <tr>
        <td height=“100”><br></td>
        <td>ID</td><td>1000001</td><td valign="top"><br></td>
    </tr>
       	<tr>
       	  <td height=“100”><br></td>
    		<td>密码</td>
    		<td><input type="text" name="truename" size=20></td>
    	</tr>
    <tr>
      <td height=“100”><br></td>
    <td><font size="3"><input type="button" value="🆗"></font> </td></tr>
<tr>
   <img src="20180630181704.jpg" width="200"/></tr>

     
</table> 

    	</form>
  	</center>
  </body>
</html>
