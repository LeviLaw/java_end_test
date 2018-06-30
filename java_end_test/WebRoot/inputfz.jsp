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
    	<table bgcolor="#00CED1">
    	<tr>
    		<td align="center" colspan="2" bgcolor=#F0FFF0>录入房主信息</td>
    	</tr>

    	<tr>
    		<td>姓名：</td>
    		<td><input type="text" name="truename" size=20></td>
    	</tr>
    	    	<tr>
    		<td>手机号：</td>
    		<td><input type="text" name="nicheng" size=5></td>
    	</tr>
    	<tr>
    		<td>性别：</td>
    		<td><input type="radio" name="xb" checked value="1">男&nbsp;
    			<input type="radio" name="xb" value="0">女</td>
    	</tr>
    	<tr>
    		<td>出生日期：</td>
    		<td><input type="text" name="csrq" size=20></td>
    	</tr>
    	<tr>
    		<td>现住址：</td>
    		<td><select name="zy">
    		<option selected>集美区</option>
    		<option>湖里区</option>
    		<option>思明区</option>
    		</select>
    		</td>
    	</tr>
    	<tr>
    		<td>会面可选时间</td>
    		<td><input type="checkbox" value="music" name="xq">周四晚上&nbsp;
    			<input type="checkbox" value="dance" name="xq">周二下午&nbsp;
    			<input type="checkbox" value="run" name="xq">周一半夜</td>
    	</tr>
    	<tr>
    		<td>房屋信息</td>
    		<td><input type="checkbox" value="music" name="xq">单人间&nbsp;
    			<input type="checkbox" value="dance" name="xq">套间&nbsp;
    			<input type="checkbox" value="run" name="xq">别墅</td>
    	</tr>
    	   	<tr>
    		<td>出租房地址：</td>
    		<td><select name="zy">
    		<option selected>滨水小区</option>
    		<option>兑山村</option>
    		<option>集美金街</option>
    		</select>
    		</td>
    	</tr>
    	    	<tr>
    		<td>房租：</td>
    		<td><input type="text" name="csrq" size=20></td>
    	</tr>
    	    	<tr>
    		<td>现在是否可租</td>
    		<td><input type="checkbox" value="music" name="xq">是&nbsp;
    			<input type="checkbox" value="dance" name="xq">否&nbsp;
    			<input type="checkbox" value="run" name="xq">待定</td>
    	</tr>
    	<tr valign="top">
    		<td>备注</td>
    		<td><textarea rows=3 cols=20 name="bz"></textarea>
    	</tr>
    	
    	<tr><td align="center" colspan="2">
    	<input type="submit" value="提交">
    	<input type="reset" value="重置">
    	</td>
    	</tr>
    	</table>
    	</form>
  	</center>
  </body>
</html>
