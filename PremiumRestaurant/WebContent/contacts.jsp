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

	<article>
		<form action="" method="post" enctype="multipart/form-data">
			<fieldset>

				<strong>Your Contact Details</strong>
				<p>
					<label>Full Name:</label> <input type="text" name="Your full name"
						placeholder="Your full name" required> <br> <br>
					<label>Email:</label> <input type="email" name="Your E-mail"
						placeholder="Enter a valid email address" required> <br>
					<br> <label>Phone:</label> <input type="tel" name="Phone"
						placeholder="Enter a phone number" required> <br> <br>
					<label>Message:</label> <input type="text" name="Message"
						placeholder="Any other info"> <br> <input
						type="submit" name="Send Form" placeholder="requirements"
						value="Submit"> <br>
				</p>
			</fieldset>
		</form>

		<fieldset>
			<address>
				Premium Restaurant.<br> 8901 Marmora Road,<br> Athlone ,
				D04 89GR.
				<p></p>

				Freephone:+1 800 559 6580 <br>Telephone:+1 800 603 6035 <br>FAX:
				+1 800 889 9898
			</address>
		</fieldset>

		<br>


	</article>
	<aside>

		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2377.769822589478!2d-7.90728168475704!3d53.418942576973!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1f3a077e5c4fdffd!2sAthlone+Institute+of+Technology!5e0!3m2!1sen!2sie!4v1479641562225"
			width="600" height="450"></iframe>
		<br>


	</aside>


	<%@ include file="footer.jsp"%>

</body>
</html>
