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
							��J���B�q
							<input type="text" name="start" size=5>
							��
							<input type="text" name="end" size=5>
							<input type="submit" value="�T�w">
					</table>			
				</form>
</table>
<tr>
	<td align=center>
	<table width=600 border=1 bgcolor="#FFDDAA">
		<tr bgcolor="#FFAA33">
			<td>�渹
			<td>�ู
			<td>������
			<td>�b������
			<td>�_����
			<td>�`���B
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
		out.println("<tr><td colspan=6 align=center><h2>~�п�J�d�ߪ��B~</h2>");
	}	
	%>		

</table>
<tr>
	<td colspan=6 align=center>
	<a href="query.jsp">�^�d�߭�</a>&nbsp;<a href="../index.jsp">�^�D����</a><br>
<tr>
	<td align=center>
	<%@ include file="../footer.jsp" %>
</table>
</body>
</html>