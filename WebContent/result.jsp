<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="resources/fusioncharts/js/fusioncharts.js"></script>
<script type="text/javascript" src="resources/fusioncharts/js/fusioncharts.charts.js"></script>
<!-- <script type="text/javascript" src="resources/fusioncharts/themes/fusioncharts.theme.carbon.js"></script> -->
<script>
	var chartData = <%=request.getAttribute("result") %>
	FusionCharts.ready(function () {
	    var myChart = new FusionCharts({
	        type: 'column2d',
	        renderAt: 'chart-container',
	        dataFormat: 'json',
	        dataSource: chartData
	    });
	    myChart.render();
	});
</script>
</head>
<body>
<div id="chart-container"></div>
</body>
</html>