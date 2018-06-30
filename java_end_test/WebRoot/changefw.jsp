<%@page import="com.student.model.stuInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'displaystuinfo.jsp' starting page</title>
    
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
    <jsp:useBean id="stuSer" class="com.lrxhqujavaee.service.stuInfoservice"></jsp:useBean>
  	<%
  	List stus=stuSer.queryAllStu();
  	//out.print(stus.size());
  	Iterator iter=stus.iterator();
  	 %>
  	 <table>
  	 	<tr><td>id</td><td>手机号</td><td>姓名</td><td>性别</td><td>出生日期</td><td>现住址</td><td>会面可选时间</td><td>房屋信息</td><td>出租房地址</td><td>房租</td><td>现在是否可租</td><td>备注</td></tr>
  	 <%
  	 int i=0;
  	 while(iter.hasNext()){
  	 	stuInfo student=(stuInfo)iter.next();
  	 	%>
  	 	<tr <%if (i%2==0) {%> bgcolor="#F0F8FF" <%}%>>
  	 	<td><%=student.getId() %></td>
  	 	<td><%=student.getNicheng() %></td>
  	 	<td><%=student.getTruename() %></td>
  	 	<td><%if(student.getXb()==1) out.print("男");else out.print("女"); %></td>
  	 	<td><%=student.getCsrq() %></td>
  	 	<td><%=student.getZy() %></td>
  	 	<td><%=student.getKcs() %></td>
  	 	<td><%=student.getXqs() %></td>
  	 	<td><%=student.getBz() %></td>
  	 	<td><a href="changefw.jsp?id=<%=student.getId()%>">修改</a></td>
  	 	</tr>
  	 	<%
  	 	i++;
  	 	}
  	  %>
  	 </table>
  </body>
</html>
