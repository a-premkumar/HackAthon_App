<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pro Analysis - Next Generation Telecommunication Analysis Dashboard</title>
		<style>
			.layer-top{
				height:150px;
				width:100%;
				background: skyblue;
			}
			.layer-bottom{
				height:500px;
				width:100%;
				background: lightgreen;
				display:inline-block;
			}
			.panel-nav{
				height:100%;
				width:20%;
				float:left;
				background:#e4e4e4;
			}
			.panel-content{
				height:100%;
				width:80%;
				float:left;
				background:#f4f4f4;
			}
			.content-frame{
				width:100%;
				height:100%;
			}
		</style>
	</head>
	<body>
		<div class="layer-top"><center><strong>Top Layer</strong></center></div>
		<div class="layer-bottom">
			<div class="panel-nav">Navigation Panel</div>
			<div class="panel-content">
				<iframe class="content-frame" src="Sample"></iframe>
			</div>
		</div>
	</body>
</html>