<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
	<link rel="stylesheet" href="css/register.css">
</head>
<body>
	<div class="container right-panel-active">
		<!-- Sign Up -->
		<div class="container__form container--signup">
			<form action="#" class="form" id="form1">
				<h2 class="form__title">Sign Up</h2>
				<input type="text" placeholder="User" class="input" />
				<input type="email" placeholder="Email" class="input" />
				<input type="password" placeholder="Password" class="input" />
				<button class="btn" id="signUpBtn">Sign Up</button>
				<p>Already have an account? <a href="#" id="signInLink">Sign in</a></p>
				<p>Back to home <a href="index.jsp" id="signInLink">Home</a></p>
			</form>
		</div>

		<!-- Sign In -->
		<div class="container__form container--signin">
			<form action="#" class="form" id="form2">
				<h2 class="form__title">Sign In</h2>
				<input type="email" placeholder="Email" class="input" />
				<input type="password" placeholder="Password" class="input" />
				<a href="#" class="link">Forgot your password?</a>

				<button class="btn">Sign In</button>
				<p>Don't have an account? <a href="#" id="signUpLink">Sign up</a></p>
			</form>
		</div>

		<!-- Overlay -->
		<div class="container__overlay">
			<div class="overlay">
				<div class="overlay__panel overlay--left">
					<button class="btn" id="signIn">Sign In</button>
				</div>
				<div class="overlay__panel overlay--right">
					<button class="btn" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/register.js"></script>
	<script>
		document.getElementById("signUpBtn").addEventListener("click", function() {
			window.location.href = "puppy_info.jsp";
		});
	</script>
</body>
</html>
