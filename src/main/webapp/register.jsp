<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;900&display=swap"
	rel="stylesheet">

<title>Register</title>
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

/* register form */
img-fluid {
	display: grid;
	place-items: center;
	width: 100%;
	height: 100%;
	margin: 0 auto;
}

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

icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

#register-btn {
	background-color: #76B947;
	color: white;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-size: 17px;
	padding: 10px 42%;
	border: none;
}

#register-btn:hover {
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
/* register form */

</style>

<body>
	<!-- Top navigation -->
	<div class="topnav">
		<!-- Centered link -->
		<div class="topnav-centered">
			<a href="/index.jsp" class="active">Nourish</a>
		</div>

		<!-- Right-aligned links -->
		<div class="topnav-right">
			<a href="#favorite">Favorite</a> <a href="#profile">Profile</a> <a
				href="#search">Search</a>
		</div>
	</div>
	<!-- Top navigation -->

	<!-- Register Form -->
	<div class="container py-5 h-100"
		style="background-color: #76B947; border-radius: 10px; margin-top: 30px; margin-bottom: 50px">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col col-xl-10">
				<div class="card"
					style="border-radius: 1rem; border: solid; border-color: #B1D8B7">
					<div class="row g-0">
						<div class="col-md-6 col-lg-5 d-none d-md-block">
							<img src="./assets/cuteshop.png" alt="nourish logo" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
						</div>
						<div class="col-md-6 col-lg-7 d-flex align-items-center">
							<div class="card-body p-4 p-lg-5 text-black">
								<form>
									<div class="d-flex align-items-center mb-3 pb-1">
										<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
										<span class="h1 fw-bold mb-0">Register </span>
									</div>

									<div class="form-outline mb-4">
										Username <input id="name" style="border-radius: 10px;"
											placeholder="username" class="form-control form-control-lg" />
										<label class="form-label" for="form2Example17"></label>
									</div>
									
									<div class="form-outline mb-4">
										Email <input id="email" style="border-radius: 10px;"
											placeholder="email" class="form-control form-control-lg" />
										<label class="form-label" for="form2Example17"></label>
									</div>

									<div class="form-outline mb-4">
										Password <input type="password" style="border-radius: 10px"
											id="password" placeholder="password"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form2Example27"></label>
									</div>

									<div class="pt-1 mb-4">
										<p>
											<button class="btn" id="register-btn" type="submit">Register</button>
										</p>
									</div>

									<p class="mb-5 pb-lg-2" style="color: #393f81;">
										Already have an account? <a href="/login.jsp" style="color: #393f81;">Login</a>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form -->

</body>
</html>