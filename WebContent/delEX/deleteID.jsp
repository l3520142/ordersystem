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
	<td align=center>
	<form method="post" action="deleteID.jsp">
	�п�J�R���渹<input type="text" name="id"><br>
	<input type="submit" value="�T�w">
	</form>	
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
			int id=Integer.parseInt(request.getParameter("id"));
			porder.delID(id);
			
			}catch(NumberFormatException e){}
			finally{
				ResultSet rs=porder.queryAll();
				while(rs.next())
					{
						out.println("<tr><td>"+rs.getInt("id")+
								"<td>"+rs.getString("desk")+
								"<td>"+rs.getInt("pro3")+
								"<td>"+rs.getInt("pro1")+
								"<td>"+rs.getInt("pro2")+
								"<td>"+rs.getInt("sum"));
					}
			}
			%>
</table>			
<tr>
<td colspan=6 align=center><a href="../index.jsp">�^�D����</a>&nbsp;
<tr>
	<td colspan=6 align=center><%@ include file="../footer.jsp" %>
</table>
</body>
</html>