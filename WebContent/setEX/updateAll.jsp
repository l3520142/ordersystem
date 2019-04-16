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
		<form method="post" action="updateAll.jsp">
			點單號<input type="text" name="id">
			&nbsp;&nbsp;桌號
			<select name="desk">
			<option value="A桌">A桌
			<option value="B桌">B桌
			<option value="C桌">C桌
			<option value="D桌">D桌
			</select><br>
			&nbsp;&nbsp;牛肉麵<input type="text" name="pro3">
			&nbsp;&nbsp;豚骨拉麵<input type="text" name="pro1">
			&nbsp;&nbsp;餛飩麵<input type="text" name="pro2">
			<br><input type="submit" value="確定">
		</form>	
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
			request.setCharacterEncoding("BIG5");
			int id=Integer.parseInt(request.getParameter("id"));
			String desk=request.getParameter("desk");
			int pro1=Integer.parseInt(request.getParameter("pro1"));
			int pro2=Integer.parseInt(request.getParameter("pro2"));
			int pro3=Integer.parseInt(request.getParameter("pro3"));
			porder p=new porder(desk,pro1,pro2,pro3);
			porder.updateAll(id,desk,pro1,pro2,pro3,p.getSum());
			
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
			%></table>
<tr>
<td colspan=6 align=center><a href="../index.jsp">回主頁面</a>&nbsp;
<a href="update.jsp">回選擇頁</a>

<tr>
	<td align=center><%@ include file="../footer.jsp" %>
</table>
</body>
</html>