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
<title>Nourish - Login</title>
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

/* login form */
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

#loginImg {
	margin: 40px;
	margin-top: 80px;
}

#login-btn {
	background-color: #94C973;
	color: white;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-size: 17px;
	padding: 10px 45%;
	border: none;
}

#login-btn:hover {
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
/* login form */
</style>

<body>

	<!-- Nourish Logo -->
	<div style="display: flex; justify-content:center; padding-top: 20px">
		<img src="img/logo.png" width="135px" height="auto" alt="nourish logo">
	</div>
	<!-- Nourish Logo -->

	<!-- Login Form -->
	<div class="container py-5 h-100"
		style="background-color: #B1D8B7; border-radius: 10px; margin-top: 30px; margin-bottom: 50px">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col col-xl-10">
				<div class="card"
					style="border-radius: 1rem; border: solid; border-color: #B1D8B7">
					<div class="row g-0">
						<div class="col-md-6 col-lg-5 d-none d-md-block">
							<img src="img/loginImage.png" alt="nourish logo"
								class="img-fluid" style="border-radius: 1rem 0 0 1rem;"
								id="loginImg" />
						</div>
						<div class="col-md-6 col-lg-7 d-flex align-items-center">
							<div class="card-body p-4 p-lg-5 text-black">

								<form action="LoginServlet" method="post">
									<div class="d-flex align-items-center mb-3 pb-1">
										<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
										<span class="h1 fw-bold mb-0">Login </span>
									</div>

									<div class="form-outline mb-4">
										Username <input name="username" style="border-radius: 10px;"
											placeholder="username" class="form-control form-control-lg" />
										<label class="form-label" for="form2Example17"></label>
									</div>

									<div class="form-outline mb-4">
										Password <input type="password" style="border-radius: 10px"
											name="password" placeholder="password"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form2Example27"></label>
									</div>

									<div class="pt-1 mb-4">
										<p>
											<button class="btn" id="login-btn" type="submit">Login</button>
										</p>
									</div>

									<p class="mb-5 pb-lg-2" style="color: #393f81;">
										Don't have an account? <a href="register.jsp"
											style="color: #393f81;">Register here</a>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Login Form -->
	
	<!-- Footer -->
	<footer class="bg-light text-center text-lg-start">
		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: #2F5233; color: white">
			Nourish.com is a property of DLJ © 2022 Copyright: <a class="text-light"
				href="login.jsp">Nourish.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->

</body>
</html>