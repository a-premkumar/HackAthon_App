<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="sessionCheck.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pro Analysis - Next Generation Telecommunication Analysis Dashboard</title>
		<link rel="stylesheet" type="text/css" href="resources/css/dashboard.css"/>
		<script type="text/javascript">
			function tabChange(button){
			    document.getElementById('content-frame').src = 'DashboardController?tab='+button.id;
			}
			function onLogout(){
				window.location.href="logout.jsp";
			}
		</script>
	</head>
	<body>
		<div class="layer-top">
			<div class="layer-top-left">
				<img class="logo" src="resources/images/logo.jpg">
			</div>
			<div class="layer-top-middle">
				<h3 class="title-text">ACSS Analytics</h3>
			</div>
			<div class="layer-top-right">
				<input type="button" value="Logout" onclick="onLogout()">
			</div>
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
			<div   class="panel-content">
				<iframe class="content-frame" id="content-frame" src="DashboardController?tab=device" frameborder="0"></iframe>
			</div>
		</div>
	</body>
</html>