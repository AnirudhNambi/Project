<!DOCTYPE HTML>
<html>

<head>
<title>Hybrid Cloud</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="shortcut icon" type="image/x-icon"
	href="images/brainstorming_alternative.png" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<script>
	function validation() {
		var uname = document.ulogin.username.value;
		var pass = document.ulogin.password.value;

		if (uname == 0) {
			alert("Enter username");
			document.ulogin.username.focus();
			return false;
		}
		if (pass == 0) {
			alert("Enter password");
			document.ulogin.password.focus();
			return false;
		}
	}
</script>
<style>
#id {
	width: 200px;
	height: 25px;
	background-color: #D5D5D5;
}

#but {
	width: 60px;
	height: 25px;
}
</style>
</head>

<body>
	<%
		if (request.getParameter("status") != null) {
			out.println("<script>alert('Registered')</script>");
		}
	%>
	<div id="main">
		<header>
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<pre> <h1>
							
						</h1>
          
					</pre>
				</div>
			</div>
			<nav>
				<ul class="sf-menu" id="nav">
					<li class="selected"><a href="index.html">Home</a></li>
					<li><a href="admin.jsp">Admin</a></li>
					

					<li><a href="#">User</a>
						<ul>
							<li><a href="user.jsp">Login</a></li>
							<li><a href="register.jsp">Register</a></li>

						</ul></li>
					
				</ul>
			</nav>
		</header>
		<div id="site_content">
			<div id="content">
				<br></br>
				<fieldset style="background-color: activeborder">
					<center>
						<h1>User Login</h1>
						<form action="user_login" name="ulogin" method="post"
							onsubmit="return validation()">
							<!--                  USERNAME:<br>-->
							<input type="text" id="id" name="username"
								placeholder="Enter username" /><br></br>
							<!--                  PASSWORD:<br>-->
							<input type="password" id="id" name="password"
								placeholder="Enter password" /><br></br> <input type="submit"
								id="but" value="Login"
								style="background-color: yellowgreen; color: #ffffff" />
							&nbsp;&nbsp; <input type="reset" id="but" value="Reset"
								style="background-color: #AA3300; color: #ffffff"></input><br></br>
							<font style="font-size: 17px;"> New User <a
								href="register.jsp" style="color: cadetblue">Register here</a>
							</font>


						</form>
					</center>
				</fieldset>
			</div>
		</div>
		<footer> </footer>
	</div>
	<p>&nbsp;</p>
	<!-- javascript at the bottom for fast page loading -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
	<script type="text/javascript" src="js/image_fade.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('ul.sf-menu').sooperfish();
		});
	</script>
</body>
</html>
