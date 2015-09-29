<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pro Analysis - Next Generation Telecommunication Analysis Dashboard</title>
		<link rel="stylesheet" type="text/css" href="resources/css/dashboard.css"/>
		<script type="text/javascript">
			function tabChange(button){
			    document.getElementById('content-frame').src = 'DashboardController?tab='+button.id;
			}
		</script>
	</head>
	<body>
		<div class="layer-top">
			<div class="static-metric-small">
				<div class="customer-caption">Total Customers</div>
				<div class="customer-value">150Mn</div>
			</div>
			<div class="static-metric-small">
				<div class="customer-caption">Calls handled /Day</div>
				<div class="customer-value">18.9Mn</div>
			</div>
			<div class="static-metric-large"></div>
		</div>
		<div class="layer-bottom">
			<div class="panel-nav">
				<input id="device" class="navigation-button" type="button" value="Device" onclick="tabChange(this)"/>
				<input id="plans" class="navigation-button" type="button" value="Plans" onclick="tabChange(this)"/>
				<input id="features" class="navigation-button" type="button" value="Features" onclick="tabChange(this)"/>
				<input id="services" class="navigation-button" type="button" value="Services" onclick="tabChange(this)"/>
				<input id="callCenter" class="navigation-button" type="button" value="Call Center" onclick="tabChange(this)"/>
				<input id="offersPromotions" class="navigation-button" type="button" value="Offers/Promotions" onclick="tabChange(this)"/>
				<input id="device" class="navigation-button" type="button" value="Attrition" onclick="tabChange(this)"/>
			</div>
			<div class="panel-content">
				<iframe class="content-frame" id="content-frame" src="DashboardController?tab=device" frameborder="0"></iframe>
			</div>
		</div>
	</body>
</html>