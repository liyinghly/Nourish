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
}

#toplogoNav{
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

</style>

<body>

	<!-- Top navigation -->
	<div class="topnav">
		<!-- Centered link -->
		<div class="topnav-centered">
			<a href="/index.jsp" class="active">
				<img src="img/logo.png" width="150" height="100" alt="nourish logo" class="img-fluid" id="toplogoNav" />
			</a>
		</div>
		
		<!-- Right-aligned links -->
		<div class="topnav-right">
			<a href="/login.jsp">
				<img src="img/user.png" width="25" height="25"/>
			</a> 
			<a href="#search">
				<img src="img/search.png" width="25" height="25"/>
			</a>
		</div>
	</div>
	<!-- Top navigation -->
	
	<!-- Banner -->
	<div class="container">
		<img src="img/fruits.jpg"  class="img-fluid" alt="website banner" style="margin-top: 30px; border-radius: 1rem;">
	</div>
	<!-- Banner -->
		
	<!-- Recipe Cards -->
	<div class="container" style="margin-top: 30px;">
	
		<h1 style="font-size: 28px; text-align: left;">Featured Recipes</h1>
	
		<div class="row row-cols-1 row-cols-md-3 g-4">
	
		  <div class="col mb-4">
		    <div class="card">
		      <img src="..." class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      </div>
		    </div>
		  </div>
		  
		  <div class="col mb-4">
		    <div class="card">
		      <img src="..." class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      </div>
		    </div>
		  </div>
		  
		  <div class="col mb-4">
		    <div class="card">
		      <img src="..." class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
		      </div>
		    </div>
		  </div>
		  
		  <div class="col mb-4">
		    <div class="card">
		      <img src="..." class="card-img-top" alt="...">
		      <div class="card-body">
		        <h5 class="card-title">Card title</h5>
		        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<!-- Recipe Cards -->
	
</body>
</html>