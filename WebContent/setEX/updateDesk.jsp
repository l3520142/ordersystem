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
	<form method="post" action="updateDesk.jsp">
	�п�J�I�渹<input type="text" name="id"><br>
	�п�ܧ��ู
	<select name="desk">
	<option value="A��">A��
	<option value="B��">B��
	<option value="C��">C��
	<option value="D��">D��
	</select><br>
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
			request.setCharacterEncoding("BIG5");
			int id=Integer.parseInt(request.getParameter("id"));
			String desk=request.getParameter("desk");
			porder.updateDesk(id, desk);
			
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
<a href="update.jsp">�^��ܭ�</a>
<tr>
	<td colspan=6 align=center><%@ include file="../footer.jsp" %>
</table>
</body>
</html>