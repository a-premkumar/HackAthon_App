<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="./resources/css/dashboard.css"/>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.js"></script>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.charts.js"></script>
		<script type="text/javascript">
			var data = <%= request.getAttribute("data")%>
			var deviceStats = data.deviceSales;
			var providerStats = data.deviceProviders;
			var problematicStats = data.problemStats;
			FusionCharts.ready(function () {
			    var topDevices = new FusionCharts({
			        type: 'pie2d',
			        renderAt: 'top-devices-stats',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: deviceStats
			    }).render();
			    var topProviders = new FusionCharts({
			        type: 'pie2d',
			        renderAt: 'top-provicer-stats',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: providerStats
			    }).render();
			    var problemChart = new FusionCharts({
			        type: 'column2d',
			        renderAt: 'device-problems-stat',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: problematicStats
			    }).render();
			}); 
		</script>
	</head>
	<body>
		<div class="reports-filter">
			<label>Location:</label>
			<select>
				<option value="All">All</option>
				<option value="New Jersy">New Jersy</option>
				<option value="Philledelhia">Philledelhia</option>
				<option value="Kansas">Kansas</option>
				<option value="Texas">Texas</option>
				<option value="Florida">Florida</option>
				<option value="Virginia">Virginia</option>
			</select>
		</div>
		<div class="device-top-container">
			<div class="top-devices-stats" id="top-devices-stats"></div>
			<div class="top-provicer-stats" id="top-provicer-stats"></div>
		</div>
		<div class="device-problems-stat" id="device-problems-stat"></div>
	</body>
</html>