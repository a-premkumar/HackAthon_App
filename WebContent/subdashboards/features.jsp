<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="./resources/css/dashboard.css"/>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.js"></script>
		<script type="text/javascript" src="./resources/fusioncharts/js/fusioncharts.charts.js"></script>
		<script type="text/javascript">
			var topFeaturesData = '{"chart":{"numberSuffix": "Mn","caption":"Top used features","xAxisName":"Plans","yAxisName":"Customers","paletteColors":"#0075ff","bgColor":"#ffffff","borderAlpha":"20","canvasBorderAlpha":"0","usePlotGradientColor":"0","plotBorderAlpha":"10","placevaluesInside":"1","rotatevalues":"1","valueFontColor":"#ffffff","showXAxisLine":"1","xAxisLineColor":"#999999","divlineColor":"#999999","divLineIsDashed":"1","showAlternateHGridColor":"0","subcaptionFontBold":"0","subcaptionFontSize":"14"},"data":[{"label":"More Everything 1GB","value":"22.4"},{"label":"Nationwide Voice 50$","value":"11.5"},{"label":"More Everything 2GB","value":"13.6"},{"label":"Americas Choice","value":"6.1"},{"label":"Line level 30$","value":"5.4"}]}';
			var leastFeaturesData = '{"chart":{"numberSuffix": "Mn","caption":"Least used features","xAxisName":"Plans","yAxisName":"Customers","paletteColors":"#0075ff","bgColor":"#ffffff","borderAlpha":"20","canvasBorderAlpha":"0","usePlotGradientColor":"0","plotBorderAlpha":"10","placevaluesInside":"1","rotatevalues":"1","valueFontColor":"#ffffff","showXAxisLine":"1","xAxisLineColor":"#999999","divlineColor":"#999999","divLineIsDashed":"1","showAlternateHGridColor":"0","subcaptionFontBold":"0","subcaptionFontSize":"14"},"data":[{"label":"Plan 1","value":"0.3"},{"label":"Plan 2","value":"0.8"},{"label":"Plan 3","value":"0.9"},{"label":"Plan 4","value":"1.1"},{"label":"Plan 5","value":"1.4"}]}';
			var popularData = '{"chart":{"caption":"Emerging features","captionFontSize":"14","subcaptionFontSize":"14","subcaptionFontBold":"0","paletteColors":"##0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000","bgcolor":"#ffffff","showBorder":"0","showShadow":"0","showCanvasBorder":"0","usePlotGradientColor":"0","legendBorderAlpha":"0","legendShadow":"0","showAxisLines":"0","showAlternateHGridColor":"0","divlineThickness":"1","divLineIsDashed":"1","divLineDashLen":"1","divLineGapLen":"1","xAxisName":"Day","showValues":"0"},"categories":[{"category":[{"label":"Jan 15"},{"label":"Feb 15"},{"label":"Mar 15"},{"label":"Apr 15"},{"label":"May 15"},{"label":"Jun 15"},{"label":"Jul 15"},{"label":"Aug 15"},{"label":"Sep 15"}]}],"dataset":[{"seriesname":"4G LTE","data":[{"value":"15.1"},{"value":"7.81"},{"value":"8.9"},{"value":"20.8"},{"value":"40.2"},{"value":"32.0"},{"value":"35.4"}]},{"seriesname":"Free Facebook Data","data":[{"value":"12.7"},{"value":"18.4"},{"value":"18.9"},{"value":"19.6"},{"value":"25.1"},{"value":"41.7"},{"value":"52.4"}]},{"seriesname":"Free WhatsApp Data","data":[{"value":"0.7"},{"value":"2.8"},{"value":"20.9"},{"value":"40.8"},{"value":"39.7"},{"value":"41.7"},{"value":"52.4"}]},{"seriesname":"5G Data","data":[{"value":"4.6"},{"value":"66.8"},{"value":"70.7"},{"value":"120.9"},{"value":"121.4"},{"value":"122.7"},{"value":"122.2"}]}],"trendlines":[{"line":[{"startvalue":"17022","color":"#6baa01","valueOnRight":"1","displayvalue":"Average"}]}]}';
			var notPopularData = '{"chart":{"caption":"Dropping features","captionFontSize":"14","subcaptionFontSize":"14","subcaptionFontBold":"0","paletteColors":"#0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000","bgcolor":"#ffffff","showBorder":"0","showShadow":"0","showCanvasBorder":"0","usePlotGradientColor":"0","legendBorderAlpha":"0","legendShadow":"0","showAxisLines":"0","showAlternateHGridColor":"0","divlineThickness":"1","divLineIsDashed":"1","divLineDashLen":"1","divLineGapLen":"1","xAxisName":"Day","showValues":"0"},"categories":[{"category":[{"label":"Jan 15"},{"label":"Feb 15"},{"label":"Mar 15"},{"label":"Apr 15"},{"label":"May 15"},{"label":"Jun 15"},{"label":"Jul 15"},{"label":"Aug 15"},{"label":"Sep 15"}]}],"dataset":[{"seriesname":"SMS Service","data":[{"value":"15.1"},{"value":"7.81"},{"value":"6.5"},{"value":"4.7"},{"value":"4.6"},{"value":"4.6"},{"value":"4.2"}]},{"seriesname":"2G Data","data":[{"value":"12.7"},{"value":"12.4"},{"value":"12.5"},{"value":"12.1"},{"value":"11.9"},{"value":"11.7"},{"value":"11.4"}]},{"seriesname":"Caller ID","data":[{"value":"4.7"},{"value":"4.6"},{"value":"4.5"},{"value":"4.2"},{"value":"3.7"},{"value":"3.1"},{"value":"2.4"}]},{"seriesname":"Caller Ringer","data":[{"value":"12.4"},{"value":"11.5"},{"value":"10.2"},{"value":"9.7"},{"value":"7.8"},{"value":"7.3"},{"value":"6.5"}]}],"trendlines":[{"line":[{"startvalue":"17022","color":"#6baa01","valueOnRight":"1","displayvalue":"Average"}]}]}';
			FusionCharts.ready(function () {
				var topFeatures = new FusionCharts({
			        type: 'column2d',
			        renderAt: 'feautres-top-used',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: topFeaturesData
			    }).render();
				var leastFeatures = new FusionCharts({
			        type: 'column2d',
			        renderAt: 'feautres-least-used',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: leastFeaturesData
			    }).render();
				var popularFeatures = new FusionCharts({
			        type: 'msline',
			        renderAt: 'feautres-popular',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: popularData
			    }).render();
				var notPopularFeatures = new FusionCharts({
			        type: 'msline',
			        renderAt: 'feautres-not-popular',
			        width: '100%',
			        height: '100%',
			        dataFormat: 'json',
			        dataSource: notPopularData
			    }).render();
			});
		</script>
	</head>
	<body class="subdash-body">
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
		<div style="height:50%;width:100%;">
			<div class="feautres-top-used" id="feautres-top-used"></div>
			<div class="feautres-popular" id="feautres-popular"></div>
		</div>
		<div style="height:50%;width:100%;">
			<div class="feautres-least-used" id="feautres-least-used"></div>
			<div class="feautres-not-popular" id="feautres-not-popular"></div>
		</div>
	</body>
</html>