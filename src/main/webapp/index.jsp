<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Nourish</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;900&display=swap"
	rel="stylesheet">
</head>
<style>
body {
	font-family: 'QuickSand', sans-serif;
}

h1 {
	font-weight: bolder;
	color: #2F5233;
	text-align: center;
}

/* nav bar */
.topnav {
	position: relative;
	overflow: hidden;
	margin-top: 20px
}

#toplogoNav {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

/* Style the links inside the navigation bar */
.topnav a {
	float: left;
	color: #2F5233;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 18px;
	font-weight: bolder;
}

/* Change the color of links on hover */
.topnav a:hover {
	color: black;
}

/* Add a color to the active/current link */
.topnav-right a.active {
	color: black;
}

/* Centered section inside the top navigation */
.topnav-centered a {
	float: none;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #2F5233;
	font-size: 32px;
}

/* Right-aligned section inside the top navigation */
.topnav-right {
	float: right;
	padding-right: 30px
}

/* Responsive navigation menu - display links on top of each other instead of next to each other (for mobile devices) */
@media screen and (max-width: 600px) {
	.topnav a, .topnav-right {
		float: none;
		display: block;
	}
	.topnav-centered a {
		position: relative;
		top: 0;
		left: 0;
		transform: none;
	}
}

.rname {
	padding-left: 3px;
	padding-top: 8px;
}

/* link CSS */
.link-color {
  color: #18272F;
  position: relative;
  text-decoration: none;
}

.link-color::before {
  content: '';
  position: absolute;
  width: 100%;
  height: 2px;
  border-radius: 4px;
  background-color: #18272F;
  bottom: 0;
  left: 0;
  transform-origin: right;
  transform: scaleX(0);
  transition: transform .3s ease-in-out;
}

.link-color:hover {
	color: black;
}

.link-color:hover::before {
  transform-origin: left;
  transform: scaleX(1);
}
/* link CSS */
</style>

<body>

	<!-- Top navigation -->
	<div class="topnav">
		<!-- Centered link -->
		<div class="topnav-centered">
			<a href="/index.jsp" class="active"> <img src="img/logo.png"
				width="135px" height="auto" alt="nourish logo" class="img-fluid"
				id="toplogoNav" />
			</a>
		</div>

		<!-- Right-aligned links -->
		<div class="topnav-right">
			<a href="/login.jsp"> <img src="img/user.png" width="25"
				height="25" />
			</a> <a href="#search"> <img src="img/search.png" width="25"
				height="25" />
			</a>
		</div>
	</div>
	<!-- Top navigation -->

	<!-- Banner -->
	<div class="container">
		<img src="img/bannerOne.png" class="img-fluid" alt="website banner"
			style="margin-top: 30px; border-radius: 1rem;">
	</div>
	<!-- Banner -->

	<br>

	<!-- Recipe Cards -->
	<div class="container">

		<h1 style="font-size: 28px; text-align: left;">Featured Recipes</h1>

		<br>

		<div class="row">
		
			<div class="col card h-100 border-0">
				<img src="img/honeyGlazedSalmon.png">
				<div class="rname">
					<h5 class="card-title">Honey Glazed Salmon</h5>
					<p class="card-text">Ratings:4.5</p>
					<a class="link-color" href="..." style="text-decoration: none;">Read More</a>
				</div>
			</div>
			
			<div class="col card h-100 border-0">
				<img src="img/fishTaco.png">
				<div class="rname">
					<h5 class="card-title">Easy Fish Tacos</h5>
					<p class="card-text">Ratings:4.5</p>
					<a class="link-color" href="..." style="text-decoration: none;">Read More</a>
				</div>
			</div>
			
			<div class="col card h-100 border-0">
				<img src="img/smoothieBowl.png">
				<div class="rname">
					<h5 class="card-title">Berry Smoothie Bowl</h5>
					<p class="card-text">Ratings:4.0</p>
					<a class="link-color" href="..." style="text-decoration: none;">Read More</a>
				</div>
			</div>
			
		</div>

		<br> <br>

		<div class="row">
		
			<div class="col card h-100 border-0">
				<img src="img/cauliflowerPizza.png">
				<div class="rname">
					<h5 class="card-title">Cauliflower Crust Pizza</h5>
					<p class="card-text">Ratings:4.0</p>
					<a class="link-color" href="..." style="text-decoration: none;">Read More</a>
				</div>
			</div>
			
			<div class="col card h-100 border-0"></div>
			<div class="col card h-100 border-0"></div>
		</div>

		<br> <br>

	</div>
	<!-- Recipe Cards -->
	
	<!-- Footer -->
	<footer class="bg-light text-center text-lg-start">
		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: #2F5233; color: white">
			Nourish.com is a property of DLJ © 2022 Copyright: <a class="text-light"
				href="index.jsp">Nourish.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->

</body>

</html>