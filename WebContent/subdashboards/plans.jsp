<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="./resources/css/dashboard.css"/>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.js"></script>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.charts.js"></script>
		<script type="text/javascript">
			var topPlanData = '{"chart":{"numberSuffix": "Mn","caption":"Top used plans","xAxisName":"Plans","yAxisName":"Customers","paletteColors":"#0075c2","bgColor":"#ffffff","borderAlpha":"20","canvasBorderAlpha":"0","usePlotGradientColor":"0","plotBorderAlpha":"10","placevaluesInside":"1","rotatevalues":"1","valueFontColor":"#ffffff","showXAxisLine":"1","xAxisLineColor":"#999999","divlineColor":"#999999","divLineIsDashed":"1","showAlternateHGridColor":"0","subcaptionFontBold":"0","subcaptionFontSize":"14"},"data":[{"label":"More Everything 1GB","value":"22.4"},{"label":"Nationwide Voice 50$","value":"11.5"},{"label":"More Everything 2GB","value":"13.6"},{"label":"Americas Choice","value":"6.1"},{"label":"Line level 30$","value":"5.4"}]}';
			var leastPlanData = '{"chart":{"numberSuffix": "Mn","caption":"Top used plans","xAxisName":"Plans","yAxisName":"Customers","paletteColors":"#0075c2","bgColor":"#ffffff","borderAlpha":"20","canvasBorderAlpha":"0","usePlotGradientColor":"0","plotBorderAlpha":"10","placevaluesInside":"1","rotatevalues":"1","valueFontColor":"#ffffff","showXAxisLine":"1","xAxisLineColor":"#999999","divlineColor":"#999999","divLineIsDashed":"1","showAlternateHGridColor":"0","subcaptionFontBold":"0","subcaptionFontSize":"14"},"data":[{"label":"Plan 1","value":"0.3"},{"label":"Plan 2","value":"0.8"},{"label":"Plan 3","value":"0.9"},{"label":"Plan 4","value":"1.1"},{"label":"Plan 5","value":"1.4"}]}';
			FusionCharts.ready(function () {
				var topPlans = new FusionCharts({
			        type: 'column2d',
			        renderAt: 'plans-top-used',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: topPlanData
			    }).render();
				var leastPlans = new FusionCharts({
			        type: 'column2d',
			        renderAt: 'plans-least-used',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: leastPlanData
			    }).render();
			});
		</script>
	</head>
	<body style="overflow-y:auto;display:inline-block;">
		<div class="groupHeader"> <h1>Plans</h1> </div>
		<div class="reports-filter">
			<label>Age Group:</label>
			<select>
				<option value="All">All</option>
				<option value="14">14 - 18</option>
				<option value="19">19 - 24</option>
				<option value="25">25 - 39</option>
				<option value="40">40 - 59</option>
				<option value="60">Above 60</option>
			</select>
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
		<div class="plans-top-used" id="plans-top-used"></div>
		<div class="plans-least-used" id="plans-least-used"></div>
	</body>
</html>