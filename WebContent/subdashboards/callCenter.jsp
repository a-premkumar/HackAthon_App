<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="./resources/css/dashboard.css"/>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.js"></script>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.charts.js"></script>
		<script type="text/javascript" src="./resources/js/jquery-1.11.3.min.js"></script>
		<script src="http://code.highcharts.com/highcharts.js"></script>
		<script src="http://code.highcharts.com/modules/exporting.js"></script>
		<script type="text/javascript">
			$(function () {
				var avgTimePerCall = {title:{text:'Time',x:-20},xAxis:{categories:['Oct 14','Nov 14','Dec 14','Jan 14','Feb 14','Mar 14','Apr 14','May 14','Jun 14','Jul 14','Aug 14','Sep 14']},yAxis:{title:{text:'Call Density (\'000)'},plotLines:[{value:0,width:1,color:'#808080'}]},tooltip:{valueSuffix:'K'},legend:{layout:'vertical',align:'right',verticalAlign:'middle',borderWidth:0},series:[{name:'Texas',data:[7.0,6.9,9.5,14.5,18.2,21.5,25.2,26.5,23.3,18.3,13.9,9.6]},{name:'New York',data:[-0.2,0.8,5.7,11.3,17.0,22.0,24.8,24.1,20.1,14.1,8.6,2.5]},{name:'Florida',data:[-0.9,0.6,3.5,8.4,13.5,17.0,18.6,17.9,14.3,9.0,3.9,1.0]},{name:'Virginia',data:[3.9,4.2,5.7,8.5,11.9,15.2,17.0,16.6,14.2,10.3,6.6,4.8]},{name:'Kansas',data:[7.2,10.7,8.4,7.4,2.8,17.0,8.9,1.4,16.8,7.6,2.0,8.4]}]};
			    $('#call-average-time').highcharts(avgTimePerCall);
			});
			FusionCharts.ready(function(){
				var callTypeData = '{"chart":{"caption":"Top reasons for the call","paletteColors":"#0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000","bgColor":"#ffffff","numberSuffix":"K","doughnutRadius":"50","showBorder":"0","use3DLighting":"0","showShadow":"0","enableSmartLabels":"1","startingAngle":"310","showLabels":"0","showPercentValues":"1","showLegend":"0","legendShadow":"0","legendPosition":"right","legendBorderAlpha":"0","labelDistance":"1","centerLabel":"$label: $value","centerLabelBold":"1","showTooltip":"0","decimals":"0","captionFontSize":"14","subcaptionFontSize":"14","subcaptionFontBold":"0"},"data":[{"label":"Technical support","value":"28.5"},{"label":"Device Support","value":"14.6"},{"label":"Plan Change","value":"49.7"},{"label":"Disconnect","value":"4.90"},{"label":"Plan Clarification","value":"10.3"},{"label":"EDGE","value":"18.1"},{"label":"Others","value":"16.5"}]}';
				var callDensityData = '{"chart":{"caption":"Call Density","subcaption":"","plotgradientcolor":"","bgcolor":"FFFFFF","showalternatehgridcolor":"0","showplotborder":"0","showvalues":"0","labeldisplay":"WRAP","divlinecolor":"CCCCCC","showcanvasborder":"0","canvasborderalpha":"0","palettecolors":"#f8bd19","yaxisvaluespadding":"10","showborder":"0"},"data":[{"label":"Oct 14","value":"370000"},{"label":"Nov 14","value":"360000"},{"label":"Dec 14","value":"360000"},{"label":"Jan 15","value":"420000"},{"label":"Feb 15","value":"460000"},{"label":"Mar 15","value":"480000"},{"label":"Apr 15","value":"520000"},{"label":"May 15","value":"560000","displayvalue":"Peak Density","showvalue":"1","anchoralpha":"100","anchorradius":"7"},{"label":"Jun 15","value":"510000"},{"label":"Jul 15","value":"470000"},{"label":"Aug 15","value":"430000"},{"label":"Sep 15","value":"420000"}]}';
			    var revenueChart = new FusionCharts({
			        type: 'doughnut2d',
			        renderAt: 'call-type-container',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: callTypeData
			    }).render();
			    var densityChart = new FusionCharts({
			        type: 'area2d',
			        renderAt: 'call-density-container',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: callDensityData
			    }).render();
			});
		</script>
	</head>
	<body style="overflow-y:scroll">
		<div class="call-reports-top">
			<div class="call-density-container" id="call-density-container"></div>
			<div class="call-type-container" id="call-type-container"></div>
		</div>
		<div class="call-average-time" id="call-average-time"></div>
	</body>
</html>