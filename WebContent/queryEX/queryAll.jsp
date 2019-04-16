<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="com.porder" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>HELLO NOODLE RESTERENT</title>
</head>
<%
ResultSet rs=porder.queryAll();
%>
<body background="../bgpic/noodlebg.jpg">
<table width=750 align=center border=1 bgcolor="#FFF5EE">
<tr>
	<td align=center><%@ include file="../header.jsp" %>
<tr>
	<td align=center><%@ include file="../time.jsp" %>
<tr>
	<td align=center>
	<table width=600 border=1 bgcolor="#FFDDAA">
		<tr bgcolor="#FFAA33">
			<td>單號
			<td>桌號
			<td>牛肉麵
			<td>豚骨拉麵
			<td>餛飩麵
			<td>總金額
					
			<%
			int sum=0,count=0,pro3=0,pro1=0,pro2=0;
			while(rs.next())
				{
					int x=rs.getInt("sum"),
						p3=rs.getInt("pro3"),
						p1=rs.getInt("pro1"),
						p2=rs.getInt("pro2");
				out.println("<tr><td>"+rs.getInt("id")+
							"<td>"+rs.getString("desk")+
							"<td>"+rs.getInt("pro3")+
							"<td>"+rs.getInt("pro1")+
							"<td>"+rs.getInt("pro2")+
							"<td>"+x);
					pro3+=p3;
					pro1+=p1;
					pro2+=p2;
					sum+=x;
					count++;
				}
			out.println("<tr bgcolor=yellow><td><font color=red>總計</font><td>"+
						count+"筆<td>"+
						pro3+"份<td>"+
						pro1+"份<td>"+
						pro2+"份<td>"+
						sum+"元");
			%>
</table>
<tr>
	<td colspan=6 align=center>
	<a href="query.jsp">回查詢頁</a>&nbsp;<a href="../index.jsp">回主頁面</a><br>
<tr>
	<td align=center>
	<%@ include file="../footer.jsp" %>
</table>
</body>
</html>