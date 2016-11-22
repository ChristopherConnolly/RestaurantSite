<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Premium Restaurant</title>
<link rel="stylesheet" href="restaurantstyle.css">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script|Great+Vibes"
	rel="stylesheet">
</head>
<body>
	<%@ include file="header.jsp"%>
	<main id="booking_main">
	<div id="booking_main_form">
		<form action="" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>
					<h3>Your General Details</h3>
				</legend>
				<label>First Name:</label> <input type="text" name="Your first name"
					placeholder="Your first name" required> <br> <br>
				<label>Second Name:</label> <input type="text" name="Your last name"
					placeholder="Your last name" required> <br> <br>
				<label>Gender:</label> <input type="radio" name="YourGender"
					value="Male" required>Male <input type="radio"
					name="YourGender" value="Female" required>Female <br>
				<br> <label>Please call phone to book for more than six
					people</label> <br> <br> <label>Choose table size:</label> <select
					name="tables">
					<option value="Two">Table for two</option>
					<option value="One">Table for one</option>
					<option value="Three">Table for three</option>
					<option value="Four">Table for four</option>
					<option value="Six">Table for six</option>
				</select>
			</fieldset>
			<br>
			<fieldset>
				<legend>
					<h3>Your Contact Information</h3>
				</legend>
				<label>Email:</label> <input type="email" name="Your Email"
					placeholder="Your email" required> <br> <br> <label>Mobile:</label>
				<input type="tel" name="Yor Mobile" placeholder="Your mobile">
				<br> <br> <label>Method to contact you:</label> <input
					type="checkbox" name="Contact method" value="Email">Email <input
					type="checkbox" name="Contact method" value="Phone">Phone
			</fieldset>
			<br> <input type="submit" name="Send Form" value="Submit">
		</form>
	</div>
	<div id="booking_main_img">
		<img class="restaurant" src="img/restaurant1.jpg"
			alt="PremiumRestaurant picture1">
	</div>
	</main>

</body>
<%@ include file="footer.jsp"%>

</html>
