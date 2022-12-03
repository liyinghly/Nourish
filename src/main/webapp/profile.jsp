<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nourish - Profile</title>
<link rel="icon" type="img/leafy.png" href="img/leafy.png">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
/* nav bar */
.upper {
	height: 100px;
}

.upper img {
	width: 100%;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.user {
	position: relative;
}

.profile img {
	height: 150px;
	width: 150px;
	margin-top: 0px;
}

.profile {
	position: absolute;
	top: -50px;
	left: 38%;
	height: 156px;
	width: 156px;
	border: 3px solid #fff;
	border-radius: 50%;
}

.follow {
	border-radius: 15px;
	padding-left: 20px;
	padding-right: 20px;
	height: 35px;
}

.stats span {
	font-size: 29px;
}

hr {
	height: 2px;
	border-width: 0;
	background-color: #2F5233;
}

.button {
	background-color: #94C973; /* Green */
	border: none;
	color: white;
	padding: 5px 40px;
	border-radius: 1rem; 
	text-align : center;
	text-decoration: none;
	font-size: 18px;
	cursor: pointer;
	float: right;
	margin-top: 100px;
}

.button:hover {
	box-shadow: 0px 5px 10px 0px #AAAAAA;
	text-decoration: none;
	color: white;
}

.button:focus {
	outline:none;
}

.delete-btn {
	background-color: white; /* Green */
	border: solid #94C973;
	color: #94C973;
	padding: 5px 40px;
	border-radius: 1rem; 
	text-align : center;
	text-decoration: none;
	font-size: 18px;
	cursor: pointer;
	float: right;
}

.delete-btn:hover {
	background-color: red;
	box-shadow: 0px 5px 10px 0px #AAAAAA;
	text-decoration: none;
	color: white;
	border: solid red;
}

.delete-btn:focus {
	outline:none;
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
			<a href="HomeServlet" class="active"> <img src="img/logo.png"
				width="135px" height="auto" alt="nourish logo" class="img-fluid"
				id="toplogoNav" />
			</a>
		</div>

		<!-- Right-aligned links -->
		<div class="topnav-right">
			<a href="<%=request.getContextPath()%>/UserServlet"> <img src="img/user.png" width="25"
				height="25" />
			</a> <a href="#search"> <img src="img/search.png" width="25"
				height="25" />
			</a>
		</div>
	</div>
	<!-- Top navigation -->

	<!-- Profile Banner -->
	<div class="container">
	
		<div class="upper">
			<img src="img/Banner.png" class="img-fluid" style="margin-top: 30px;">
		</div>
	
		<div class="user text-left"
			style="margin-top: 150px; margin-right: 800px;">
			<div class="profile">
				<img src="img/ProfilePic.png" class="rounded-circle" width="200"
					height="200">
				<c:forEach var="user" items="${listUser}">
				<h1 style="font-size: 22px; text-align: center;">
					${user.username} 
					<a href="editProfile.jsp" style="text-decoration: none;">
						<img src="img/editbtn.png" style="height: 20px; width: 20px;">
					</a>
				</h1>
				</c:forEach>
			</div>
		</div>
		
		<div>
			<a class="button" href="<%=request.getContextPath()%>/LogoutServlet">
				Log Out
			</a>
			
		</div>
	</div>		
	<!-- Profile Banner -->
	
	<!--  Favourite Recipes -->
	<br>

	<div class="container"  style="margin-top: 150px;">
	
		<hr>

		<h1 style="font-size: 28px; text-align: left; margin-top: 40px">Favorite Recipes</h1>

		<br>
		
		
		<div class="row">
		
		<!-- Recipe Cards -->
		<div class="col-md-4 card h-100 border-0" style="margin-bottom: 60px;">
				<img src="img/honeyGlazedSalmon.png">
				<div class="rname">
					<h5 class="card-title"><c:out value="Honey Glazed Salmon" /></h5>
					<p class="card-text">Ratings:4.5</p>
					<a class="link-color" href="RecipeDetailServlet?id=${recipe.id}" style="text-decoration: none;">Read More</a>
				</div>
			</div>
		</div>
		<!-- Recipe Cards -->
		
		<br><br>
		
	</div>
	<!--  Favourite Recipes -->
	
	<!--  Delete User Button -->
	<div class="container"  style="height: 70px;">
		<c:forEach var="user" items="${listUser}">
			<a class="delete-btn" href="<%=request.getContextPath()%>/DeleteUserServlet">Delete Account</a>
		</c:forEach>
	</div>
	<!--  Delete User Button -->

	<!-- Footer -->
	<footer class="bg-light text-center text-lg-start">
		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: #2F5233; color: white">
			Nourish.com is a property of DLJ © 2022 Copyright: <a
				class="text-light" href="<%=request.getContextPath()%>/HomeServlet">Nourish.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->
</body>
</html>