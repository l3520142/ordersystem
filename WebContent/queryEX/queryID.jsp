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
		<td align=center>�п�J�q�渹
			<input type="text" name="ID">
			<input type="submit" value="�T�w">
	</form><hr>
	<%
	try{
	ResultSet rs=porder.queryID(Integer.parseInt(request.getParameter("ID")));
	out.println("<table align=center width=300 border=0 bgcolor=#FFDDAA>");
	
	while(rs.next())
	{
		out.println("<tr bgcolor=#FFAA33><td align=center colspan=2>�q��s��:"+rs.getInt("id")+
				"<tr><td colspan=2>"+
				"<tr><td width=100>�ู"+"<td>"+rs.getString("desk")+
				"<tr><td width=100>������"+"<td>"+rs.getInt("pro3")+
				"<tr><td width=100>�b������"+"<td>"+rs.getInt("pro1")+
				"<tr><td width=100>�_����"+"<td>"+rs.getInt("pro2")+
				"<tr><td colspan=2><hr>"+
				"<tr><td width=100>�`���B"+"<td>"+rs.getInt("sum")+
				"<tr><td colspan=2>");
	}	
	out.println("</table>");
	}catch(NumberFormatException e){}
	%>
<tr>
	<td colspan=6 align=center>
	<a href="query.jsp">�^�d�߭�</a>&nbsp;<a href="../index.jsp">�^�D����</a><br>
<tr>
	<td align=center>
	<%@ include file="../footer.jsp" %>
</table>
</body>
</html>