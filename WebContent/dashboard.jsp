<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<% 
   String respVal = (String)request.getAttribute("respVal");
%>

<style type="text/css">
html, body{
    height: 100%;
}
#header {
    background-color:#424242;
    color:#F2F2F2;
    padding:5px;
    height: 8%;
    font-family: monospace;
    width:100%;
}
#info{
	height:42%;
	margin-top:2px;
}
.infoWidget{
	/* border:1px solid #ededed; */
	margin-left:10%;
	margin-top:10%;
	width:80%;
	background-color:#ededed;
	/* -webkit-box-shadow: -8px 10px 5px 0px rgba(0,0,0,0.91);
-moz-box-shadow: -8px 10px 5px 0px rgba(0,0,0,0.91);
box-shadow: -8px 10px 5px 0px rgba(0,0,0,0.91); */

}

#navigator {
    line-height:51px;
    background-color:#424242;
    height:86%;
    width:15%;
    float:left;
   	      
}
#section {
    width:100%;
    float:left;
    padding:10px;	
    background-color:#FAFAFA; 	 
}
#footer {
    background-color:#424242;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	
   width:100%; 	 
   font-family: monospace;
}

.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#0B0B61;
	font-family:Arial;
	font-size:18px;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
	font-family: monospace;
    font-variant: small-caps;
	
	height:12%;
	width:74%;
	text-align:center; 
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed));
	background:-moz-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-webkit-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-o-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-ms-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed',GradientType=0);
	background-color:#dfdfdf;
}
.myButton:active {
	position:relative;
	top:1px;
}
/*.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #3dc21b;
	-webkit-box-shadow:inset 0px 1px 0px 0px #3dc21b;
	box-shadow:inset 0px 1px 0px 0px #3dc21b;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #44c767), color-stop(1, #5cbf2a));
	background:-moz-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-webkit-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-o-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-ms-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:linear-gradient(to bottom, #44c767 5%, #5cbf2a 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#44c767', endColorstr='#5cbf2a',GradientType=0);
	background-color:#44c767;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#0B0B61;
	font-family:Arial;
	font-size:18px;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
	font-family: monospace;
    font-variant: small-caps;
	width:79%;
	
}*/

.clickedMyButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #e67a73;
	-webkit-box-shadow:inset 0px 1px 0px 0px #e67a73;
	box-shadow:inset 0px 1px 0px 0px #e67a73;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #db2b1f), color-stop(1, #eb675e));
	background:-moz-linear-gradient(top, #db2b1f 5%, #eb675e 100%);
	background:-webkit-linear-gradient(top, #db2b1f 5%, #eb675e 100%);
	background:-o-linear-gradient(top, #db2b1f 5%, #eb675e 100%);
	background:-ms-linear-gradient(top, #db2b1f 5%, #eb675e 100%);
	background:linear-gradient(to bottom, #db2b1f 5%, #eb675e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#db2b1f', endColorstr='#eb675e',GradientType=0);
	background-color:#db2b1f;
	border:1px solid #db2b1f;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:18px;
	font-weight:bold;
	padding:6px 12px;
	text-decoration:none;
	font-family: monospace;
    font-variant: small-caps;
	width:100%;
	/* height:12%
	width:77%;
	text-align:center; */
	height:13%;
	width:88%;
	text-align:center; 
	
}

.clickedMyButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #eb675e), color-stop(1, #db2b1f));
	background:-moz-linear-gradient(top, #eb675e 5%, #db2b1f 100%);
	background:-webkit-linear-gradient(top, #eb675e 5%, #db2b1f 100%);
	background:-o-linear-gradient(top, #eb675e 5%, #db2b1f 100%);
	background:-ms-linear-gradient(top, #eb675e 5%, #db2b1f 100%);
	background:linear-gradient(to bottom, #eb675e 5%, #db2b1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#eb675e', endColorstr='#db2b1f',GradientType=0);
	background-color:#eb675e;
}

/* .clickedMyButton:active {
	position:relative;
	top:1px;
	
} */
/*.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5cbf2a), color-stop(1, #44c767));
	background:-moz-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-webkit-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-o-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-ms-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:linear-gradient(to bottom, #5cbf2a 5%, #44c767 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cbf2a', endColorstr='#44c767',GradientType=0);
	background-color:#5cbf2a;
}
.myButton:active {
	position:relative;
	top:1px;
}*/

</style>

<title>Pro Analysis - Next Generation Telecommunication Analysis Dashboard</title>
<link rel="stylesheet" type="text/css" href="resources/css/dashboard.css"/>
<script type="text/javascript">
	function tabChange(button){
		var parentDiv = button.parentNode;
		var chlds = parentDiv.childNodes;
		for(var i=0; i<chlds.length; i++){
			if(i !=0 && i !=1 && i!=14){
				chlds[i].className = "myButton";
			}
		}
		button.className = "clickedMyButton";
	    document.getElementById('content-frame').src = 'DashboardController?tab='+button.id;
	}
</script>
 </head>
<body>

<div id="header">
<h1>ACSS Analytics</h1>
</div>

<div id="navigator">

<a href="#" id="device" class="clickedMyButton"  value="Device" onclick="tabChange(this)">Devices</a>
<a href="#" id="plans" class="myButton" value="Plans" onclick="tabChange(this)">Plans</a>
<a href="#" id="features" class="myButton" value="Features" onclick="tabChange(this)">Features</a>
<a href="#" id="services" class="myButton" value="Services" onclick="tabChange(this)">Services</a>
<a href="#" id="callCenter" class="myButton" value="Call Center" onclick="tabChange(this)">Offers and Promotions</a>
<a href="#" id="offersPromotions" class="myButton" value="Offers/Promotions" onclick="tabChange(this)">Call centers</a>
<a href="#" id="device" class="myButton" value="Attrition" onclick="tabChange(this)">Attrition Report</a>
<!-- <div id="info">
<div id="info1" class="infoWidget">Number of customers in per day : 50</div>
<div id="info2" class="infoWidget">Number of customers out per day : 50</div>
</div>  -->
</div>

<div   class="panel-content">

	<iframe class="content-frame" id="content-frame" src="DashboardController?tab=device" frameborder="0"></iframe>
	
 
</div>

<div id="footer">
Copyright © proanalysis.com
</div>

</body>
</html>

<!-- 


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

 -->