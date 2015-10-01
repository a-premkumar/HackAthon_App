<!DOCTYPE html>
<html>
	<head>
		<title>Pro Analysis - Next Generation Telecommunication Analytics Tool</title>
		<link rel="stylesheet" type="text/css" href="resources/css/login.css"/>
	</head>
	<body>
		<div id="title">ACSS Analytics</div>
		<div id="login">
			<form action="LoginController" method="post">
				<fieldset>
					<p><input name="userName" type="text" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></p>
					<p><input name="password" type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
					<p><input type="submit" value="Login"></p>
				</fieldset>
			</form>
		</div>
	</body>
</html>