<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Puppy Info</title>
	<link rel="stylesheet" href="css/register.css">
</head>
<body>
	<div class="container">
		<!-- Puppy Info -->
		<div class="container__form container--puppy-info">
			<form action="#" class="form" id="puppyInfoForm">
				<h2 class="form__title">Puppy Info</h2>
				<input type="text" placeholder="Puppy Name" class="input" id="puppyName" required/>
				<input type="text" placeholder="Puppy Species" class="input" id="puppySpecies" required/>
				<select class="input" id="puppyGender" required>
					<option value="" disabled selected>Puppy Gender</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select>
				<select class="input" id="puppySize" required>
					<option value="" disabled selected>Puppy Size</option>
					<option value="Small">Small</option>
					<option value="Medium">Medium</option>
					<option value="Large">Large</option>
				</select>
				<input type="number" placeholder="Puppy Age" class="input" id="puppyAge" required/>
				<button class="btn" id="submitBtn">Submit</button>
			</form>
		</div>

		<!-- Overlay -->
		<div class="container__overlay">
			<div class="overlay">
				<div class="overlay__panel overlay--right">
					<button class="btn" id="backBtn">Back</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/register.js"></script>
	<script>
		// back button
		document.getElementById("backBtn").addEventListener("click", function() {
			window.location.href = "Register.jsp";
		});

		// submit form
		document.getElementById("submitBtn").addEventListener("click", function() {
			var puppyName = document.getElementById("puppyName").value;
			var puppySpecies = document.getElementById("puppySpecies").value;
			var puppyGender = document.getElementById("puppyGender").value;
			var puppySize = document.getElementById("puppySize").value;
			var puppyAge = document.getElementById("puppyAge").value;
			console.log("Puppy Name: " + puppyName);
			console.log("Puppy Species: " + puppySpecies);
			console.log("Puppy Gender: " + puppyGender);
			console.log("Puppy Size: " + puppySize);
			console.log("Puppy Age: " + puppyAge);
			// Submit form data to server or do something else
		});
	</script>
</body>
</html>
