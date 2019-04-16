<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*" import="com.porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>HELLO NOODLE RESTERENT</title>
</head>
<body background="../bgpic/noodlebg.jpg">
<table width=750 align=center border=1 bgcolor="#FFF5EE">
<tr>
	<td align=center><%@ include file="../header.jsp" %>
<tr>
	<td align=center><%@ include file="../time.jsp" %>
<tr>
	<form method="post" action="queryID.jsp">
		<td align=center>請輸入訂單號
			<input type="text" name="ID">
			<input type="submit" value="確定">
	</form><hr>
	<%
	try{
	ResultSet rs=porder.queryID(Integer.parseInt(request.getParameter("ID")));
	out.println("<table align=center width=300 border=0 bgcolor=#FFDDAA>");
	
	while(rs.next())
	{
		out.println("<tr bgcolor=#FFAA33><td align=center colspan=2>訂單編號:"+rs.getInt("id")+
				"<tr><td colspan=2>"+
				"<tr><td width=100>桌號"+"<td>"+rs.getString("desk")+
				"<tr><td width=100>牛肉麵"+"<td>"+rs.getInt("pro3")+
				"<tr><td width=100>豚骨拉麵"+"<td>"+rs.getInt("pro1")+
				"<tr><td width=100>餛飩麵"+"<td>"+rs.getInt("pro2")+
				"<tr><td colspan=2><hr>"+
				"<tr><td width=100>總金額"+"<td>"+rs.getInt("sum")+
				"<tr><td colspan=2>");
	}	
	out.println("</table>");
	}catch(NumberFormatException e){}
	%>
<tr>
	<td colspan=6 align=center>
	<a href="query.jsp">回查詢頁</a>&nbsp;<a href="../index.jsp">回主頁面</a><br>
<tr>
	<td align=center>
	<%@ include file="../footer.jsp" %>
</table>
</body>
</html>