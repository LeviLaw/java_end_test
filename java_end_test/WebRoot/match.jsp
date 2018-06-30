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
                      系统匹配见面时间
    </tr>
    <tr>
            <td height=“100”></td>
        <th>信息</th><th>姓名</th><th>手机号</th><th>会面时间</th><td valign="top"><br></td><th><br></th>
    </tr>
    
    <tr>
        <td height=“100”><br></td>
        <td>房主</td><td>六一</td><td>110</td><td>周四晚上</td><td valign="top"><br></td><td><font size="3"><input type="button" value="🆗"></font> </td>
    </tr>
        <tr>
                <td height=“100”><br></td>
        <td>学生</td><td>可乐</td><td>120</td><td>周四晚上</td><td valign="top"><br></td><td><input type="button" value="🆗"> </td>
    </tr>
<tr>
 <td height=“100”><br></td>
       扫一扫支付
   <img src="timg1.jpg" width="200"/>
   </tr>

     
</table> 

    	</form>
  	</center>
  </body>
</html>
