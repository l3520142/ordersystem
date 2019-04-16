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
<td>
<table width=600 align=center>
		<tr>
			<td align=center>
				<form method="post" action="querySum.jsp">
					<table width=500 align=center>
						<tr>
							<td align=center>
							輸入金額從
							<input type="text" name="start" size=5>
							到
							<input type="text" name="end" size=5>
							<input type="submit" value="確定">
					</table>			
				</form>
</table>
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
	try{
	int start=Integer.parseInt(request.getParameter("start"));
	int end=Integer.parseInt(request.getParameter("end"));
	ResultSet rs=porder.querySum(start, end);
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getInt("id")+
				"<td>"+rs.getString("desk")+
				"<td>"+rs.getInt("pro3")+
				"<td>"+rs.getInt("pro1")+
				"<td>"+rs.getInt("pro2")+
				"<td>"+rs.getInt("sum"));
	}
	}catch(NumberFormatException e)
	{
		out.println("<tr><td colspan=6 align=center><h2>~請輸入查詢金額~</h2>");
	}	
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