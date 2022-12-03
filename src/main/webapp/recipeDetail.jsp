<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.dvops.maven.eclipse.Recipe"%>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<title>Nourish - Recipe</title>
<link rel="icon" type="img/leafy.png" href="img/leafy.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;900&display=swap"
	rel="stylesheet">
</head>
<style>
body h1 {
	margin-top: 25px;
	font-family: 'QuickSand', sans-serif;
	color: #2F5233;
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

/* top card */
.container {
	margin-top: 30px;
}
/* top card */

/* btn */
.btn {
	border-color: #94C973;
	color: white;
	background-color: #94C973;
	padding: 3px 20px;
	font-size: 16px;
	cursor: pointer;
	margin-bottom: 30px;
}

.btn:hover {
	background-color: white;
	color: #94C973;
}
/* btn */

/* card text */
.card-title {
	font-family: 'QuickSand', sans-serif;
	color: #2F5233;
}

.card-text {
	font-family: 'QuickSand', sans-serif;
	color: black;
}
/* card text */
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
	<c:forEach var="recipe" items="${listRecipe}">
		<!-- Top card -->
		<div class="container">


			<div class="card mx-auto border-0"
				style="width: 100%; padding-bottom: 30px;">
				<div class="row no-gutters">
					<div class="col-md-7 mx-auto">

						<h1>${recipe.name}</h1>

						<h6>Ratings: 4.5 out of 5.0</h6>

						<button class="btn" id="fav-btn" type="submit">Add to
							Favorites</button>

						<h4>Ingredients List:</h4>
						<h5 style="text-align: left">${recipe.ingredients}</h5>
					</div>
					<div class="col-md-5 mx-auto" style="padding-top: 50px;">
						<img src="${recipe.image}" class="card-img" alt="...">
					</div>
				</div>
			</div>

		</div>
		<!-- Top card -->

		<!-- Written recipe -->
		<div class="container" style="margin-top: 50px">
			<h1>Written Recipe</h1>
			<h4 style="line-height: 200%;">${recipe.wRecipe}</h4>
		</div>
		<!-- Written recipe -->

		<!-- Video recipe -->
		<div class="container" style="margin-top: 50px; margin-bottom: 70px;">
			<h1 style="padding-bottom: 10px;">Video</h1>
			<div  style="display: flex; justify-content: center;"><iframe width=1080 height="630" src="${recipe.vRecipe}"> </iframe></div>
			
		</div>
		<!-- Video recipe -->
	</c:forEach>
	<hr>

	<!-- Comment section -->
	<div class="container" style="margin-top: 50px; margin-bottom: 50px;">

		<h1 style="padding-bottom: 10px;">Comment(s)</h1>

		<!-- Add Comments -->
		<div class="container" style="width: 920px">
		
		<h4 style="padding-bottom: 10px;">Add Comments</h4>
		
		<!-- Comment Form -->
		<form action="AddCommentServlet" method="post">

			<!-- Message input -->
			<div class="form-outline mb-4">
				 <textarea class="form-control" id="form4Example3" rows="5" name="review" required></textarea>
			</div>

			<!-- Submit button -->
			<button type="submit" class="btn" style="padding: 4px 50px">Add</button>
		</form>
		<!-- Comment Form -->
		
		</div>
		<!-- Add Comments -->

		<hr>

		<!-- comment 1 -->
		<c:forEach var="comment" items="${listComment}">
		<div class="container" style="margin-top: 40px;">
			<div
				class="row d-flex justify-content-center align-items-center h-100 mx-auto">
				<div class="col col-xl-10">
					<div class="card">
						<div class="row no-gutters">
							<div class="col-auto">
								<img src="img/ProfilePic.png"
									style="width: 120px; padding: 20px" class="img-fluid">
							</div>
							<div class="col">
								<div class="card-block"
									style="padding-left: 10px; padding-top: 20px; padding-bottom: 15px">
									<h3 class="card-title">${comment.username}</h3>
									<p class="card-text">${comment.review}</p>
									<b class="card-text">${comment.dateposted}</b>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		<!-- comment 1 -->

	</div>
	<!-- Comment section -->

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