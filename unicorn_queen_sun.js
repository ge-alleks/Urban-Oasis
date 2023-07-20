// This code will construct a website for an urban oasis. 

// Create HTML structure

<!DOCTYPE html>
<html> 
<head> 
    <title>Urban Oasis</title> 
    <meta charset="utf-8" /> 
	<!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="style.css" />

	<!-- Javascript -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
	<script src="script.js" type="text/javascript"></script>
</head> 
<body> 
	<header>
		<h1>Urban Oasis</h1>
		<nav>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</nav>
	</header>
	<section id="content">
	
	</section>
	<footer>
		&copy; Urban Oasis 2015
	</footer>
</body> 
</html>

// Create CSS file 

body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: url('bg.jpg') no-repeat;
	background-size: cover;
}

header {
	width: 100%;
	background: #000;
	box-shadow: 0 0 3px rgba(0,0,0,0.5);
	color: #fff;
}

header h1 {
	text-align: center;
	padding: 20px 0;
	font-size: 40px;
}

header nav ul {
	margin: 0;
	padding: 0;
	list-style: none;
	text-align: center;
}

header nav ul li {
	display: inline-block;
	margin: 0;
	padding: 0 20px;
	line-height: 30px;
	font-size: 20px;
}

header nav ul li a {
	text-decoration: none;
	color: #fff;
}

#content {
	width: 600px;
	margin: 20px auto;
	background: #fff;
	padding: 20px;
	box-shadow: 2px 4px 6px rgba(0,0,0,0.5);
}

footer {
	width: 100%;
	background: #000;
	color: #999;
	text-align: center;
	box-shadow: 0 0 3px rgba(0,0,0,0.5);
	padding: 20px 0;
}

// Create JS file 

$(document).ready(function() {

	// functions

	// get data from server
	function getData() {
		$.ajax({
			url: 'data.php',
			type: 'GET',
			dataType: 'json',
			success: function(data) {
				processData(data);
			}
		});
	}

	// process the data
	function processData(data) {
		var html = '';
		$.each(data, function(key, value) {
			html += '<div class="item">';
			html += '<h2 class="title">' + value.title + '</h2>';
			html += '<img src="' + value.image + '" />';
			html += '<div class="description">' + value.description + '</div>';
			html += '</div>';
		});
		$('#content').html(html);
	}

	// init
	getData();

});