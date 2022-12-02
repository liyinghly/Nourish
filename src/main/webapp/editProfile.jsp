<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;900&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">

<title>Nourish - Edit Profile</title>
<link rel="icon" type="img/leafy.png" href="img/leafy.png">
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
/* edit profile form */
row {
	display: -ms-flexbox;
	/* IE10 */
	display: flex;
	-ms-flex-wrap: wrap;
	/* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}
input {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 15px;
}
label {
	margin-bottom: 10px;
	display: block;
}
#editProfile-btn {
	background-color: #94C973;
	color: white;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-size: 17px;
	padding: 10px 45%;
	border: none;
}
#editProfile-btn:hover {
	background-color: #B1D8B7;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
/* edit profile form */
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

	<!-- Edit Profile Form -->
	
	<div class="container py-5 h-100"
		style="background-color: #B1D8B7; border-radius: 10px; margin-top: 30px; margin-bottom: 50px; width: 600px">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col col-xl-10">
				<div class="card"
					style="border-radius: 1rem; border: solid; border-color: #B1D8B7">
					<div class="row g-0">
						<div class="col-md-12 d-flex align-items-center">
							<div class="card-body p-4 p-lg-5 text-black">
							
								<form action="UpdateUserServlet" method="post">
									<div style="display: flex; justify-content: center; margin-bottom: 20px">
										<img src="img/ProfilePic.png" class="rounded-circle"
											width="150" height="150">
									</div>
									<div style="text-align: center">
										<h1>Edit Profile</h1>
									</div>

									<div class="form-outline mb-4">
										Username <input name="username" style="border-radius: 10px;"
											placeholder="username" class="form-control form-control-lg" value="<c:out value='<%=session.getAttribute( "user") %>' />"/>
										<label class="form-label" for="form2Example17"></label>
									</div>

									<div class="form-outline mb-4">
										Email <input style="border-radius: 10px"
											name="email" placeholder="email"
											class="form-control form-control-lg" value="<%=session.getAttribute( "email") %>"/> <label
											class="form-label" for="form2Example27"></label>
									</div>

									<div class="pt-1 mb-4">
										<p>
											<button class="btn" id="editProfile-btn" type="submit">Save</button>
										</p>
									</div>

									<p class="mb-5 pb-lg-2" style="color: #393f81;">
										Nothing to Change? <a href="profile.jsp"
											style="color: #393f81;">Cancel</a>
									</p>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Edit Profile Form -->

	<!-- Footer -->
	<footer class="bg-light text-center text-lg-start">
		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: #2F5233; color: white">
			Nourish.com is a property of DLJ © 2022 Copyright: <a
				class="text-light" href="HomeServlet">Nourish.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->

</body>
</html>