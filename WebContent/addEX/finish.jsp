<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="com.porder" import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>HELLO NOODLE RESTERENT</title>
</head>
<%
porder p=(porder)session.getAttribute("P");
p.add();
LocalDate ld=LocalDate.now();
LocalTime lt=LocalTime.now();
%>
<body background="../bgpic/noodlebg.jpg">
<table width=750 align=center border=1 bgcolor="#FFF5EE">
<tr>
	<td align=center><%@ include file="../header.jsp" %>
<tr>
	<td>
		<table width=400 align=center border=1 bgcolor="#FFDDAA">
			<tr bgcolor="#FFAA33">
				<td align=center colspan=4>�q��ӥ�
			<tr>
				<td align=center>�ู
				<td align=center><%=p.getDesk() %>
				<td align=center>�I��ɶ�
				<td align=center><%=ld.getYear() %>�~
				<%=ld.getMonthValue() %>��<%=ld.getDayOfMonth() %>��
				&nbsp;<%=lt.getHour() %>:<%=lt.getMinute() %>		
			<tr>
				<td align=center colspan=2>������
				<td align=center colspan=2><%=p.getPro3() %>
			<tr>
				<td align=center colspan=2>�b������
				<td align=center colspan=2><%=p.getPro1() %>
			<tr>
				<td align=center colspan=2>�_����
				<td align=center colspan=2><%=p.getPro2() %>
			<tr>
				<td align=center colspan=2>�@�p
				<td align=center colspan=2><%=p.getSum() %>
			<tr>
				<td align=center colspan=4>
				<a href="javascript:window.print()" _fcksavedurl="javascript:window.print()"><img src="pic/printer.png" _fcksavedurl="pic/printer.png" alt="�C�L" width="16" height="16" border="0" /></a>
				<a href="javascript:window.print()" _fcksavedurl="javascript:window.print()">�C�L�q��</a> 
  
			</table>
<tr>
	<td align=center><a href="../index.jsp">�^�D����</a>			
<tr>
	<td align=center><%@ include file="../footer.jsp" %>		
</table>
</body>
</html>