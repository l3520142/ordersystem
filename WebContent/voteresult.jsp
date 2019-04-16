<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <div id="chart_div"></div>
<body>
 <% out.println("<script>"); 
 	out.println("google.charts.load('current', {packages: ['corechart', 'bar']});");
 	out.println("google.charts.setOnLoadCallback(drawBasic);");
 	out.println("function drawBasic() {");
 	out.println("var data = google.visualization.arrayToDataTable([");
 	out.println("['VoteResult', 'Type VoteName',],");
 	out.println(" ['Option A', 8],['Option B', 3],['Option C', 2],['Option D', 2]]);");
 	out.println("var options = {title: 'Choice leader',chartArea: {width: '50%'},");
 	out.println(" hAxis: {title: 'Total Population',minValue: 0},");
 	out.println("vAxis: {title: 'Total votes'}};");
 	out.println("var chart = new google.visualization.BarChart(document.getElementById('chart_div'));");
 	out.println("chart.draw(data, options);}");
 	out.println("</script>");%>
</body>
</html>