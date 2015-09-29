<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="./resources/css/dashboard.css"/>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.js"></script>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.charts.js"></script>
		<script type="text/javascript">
			var deviceStats = '{"chart":{"caption":"Top Selling Devices","bgcolor":"FFFFFF","showvalues":"1","showpercentvalues":"1","showborder":"0","showplotborder":"0","enablesmartlabels":"1","palettecolors":"#f8bd19,#e44a00,#008ee4,#33bdda,#6baa01,#583e78"},"data":[{"label":"iPhone 6S","value":"25"},{"label":"iPhone 5S","value":"30"},{"label":"Samsung Galaxy 6","value":"13"},{"label":"Samsung Note 4 Edge","value":"16"},{"label":"Motorola Droid","value":"9"},{"label":"Others","value":"5"}]}';
			var providerStats = '{"chart":{"caption":"Top Selling Providers","bgcolor":"FFFFFF","showvalues":"1","showpercentvalues":"1","showborder":"0","showplotborder":"0","enablesmartlabels":"1","paletteColors":"#0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000"},"data":[{"label":"Apple Inc","value":"42"},{"label":"Samsung Inc","value":"29"},{"label":"Motorola Inc","value":"18"},{"label":"Others","value":"11"}]}';
			var problematicStats = '{"chart":{"caption":"Most problematic devices","xAxisName":"Devices","yAxisName":"Average nunmber of problems per Customer","paletteColors":"#0075c2","bgColor":"#ffffff","borderAlpha":"20","canvasBorderAlpha":"0","usePlotGradientColor":"0","plotBorderAlpha":"10","placevaluesInside":"1","rotatevalues":"1","valueFontColor":"#ffffff","showXAxisLine":"1","xAxisLineColor":"#999999","divlineColor":"#999999","divLineIsDashed":"1","showAlternateHGridColor":"0","subcaptionFontBold":"0","subcaptionFontSize":"14"},"data":[{"label":"iPhone 6","value":"10"},{"label":"Samsung Galaxy 6","value":"42"},{"label":"Other","value":"38"},{"label":"Motorola Droid","value":"21"},{"label":"Other","value":"68"}]}';
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
	<body style="overflow-y:scroll">
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