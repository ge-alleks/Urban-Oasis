<?php

// Urban Oasis

// Database Connection
$db_host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'urbanoasis';

$db = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

// Helper Functions

function escape($string){
	global $db;
	return mysqli_real_escape_string($db, $string);
}

function query($query){
	global $db;
	$result = mysqli_query($db, $query);
	confirm_query($result);
	return $result;
}

function confirm_query($result){
	global $db;
	if(!$result){
		die("Query Failed: " . mysqli_error($db));
	}
}

// Front End Functions

function get_products(){
	$query = query("SELECT * FROM products");
	confirm_query($query);

	$rows = array();

	while($row = mysqli_fetch_assoc($query)){
		$rows[] = $row;
	}
	return $rows;
}

function get_categories(){
	$query = query("SELECT * FROM categories");
	confirm_query($query);

	$rows = array();

	while($row = mysqli_fetch_assoc($query)){
		$rows[] = $row;
	}
	return $rows;
}

function get_products_in_cat($category_id){
	$query = query("SELECT * FROM products WHERE product_category_id = $category_id");
	confirm_query($query);

	$rows = array();

	while($row = mysqli_fetch_assoc($query)){
		$rows[] = $row;
	}
	return $rows;
}

// Admin Functions

function get_admin_products(){
	$query = query("SELECT p.product_id, p.product_title, p.product_price, c.cat_title FROM products p LEFT JOIN categories c ON c.cat_id = p.product_category_id");
	confirm_query($query);

	$rows = array();

	while($row = mysqli_fetch_assoc($query)){
		$rows[] = $row;
	}
	return $rows;
}

function add_product($title, $price, $category_id){
	$title = escape($title);
	$price = escape($price);

	$query = query("INSERT INTO products (product_title, product_price, product_category_id) VALUES ('$title', '$price', '$category_id')");
	confirm_query($query);
}

function update_product($id, $title, $price, $category_id){
	$title = escape($title);
	$price = escape($price);

	$query = query("UPDATE products SET product_title = '$title', product_price = '$price', product_category_id = '$category_id' WHERE product_id = $id");
	confirm_query($query);
}

function delete_product($id){
	$query = query("DELETE FROM products WHERE product_id = $id");
	confirm_query($query);
}

// Shopping Cart Functions

function add_cart($product_id){
	$query = query("SELECT product_price FROM products WHERE product_id = $product_id");
	confirm_query($query);

	$row = mysqli_fetch_assoc($query);
	$product_price = $row['product_price'];

	if(isset($_SESSION['items'][$product_id])){
		// Item already exists, just increment the quantity
		$_SESSION['items'][$product_id]['quantity']++;
	}
	else {
		$_SESSION['items'][$product_id] = array('product_price' => $product_price, 'quantity' => 1);
	}

	$_SESSION['cart_count']++;
	$_SESSION['cart_total'] += $product_price;
}

function delete_cart($product_id){
	$product_price = $_SESSION['items'][$product_id]['product_price'];
	$quantity = $_SESSION['items'][$product_id]['quantity'];

	$_SESSION['cart_count'] -= $quantity;
	$_SESSION['cart_total'] -= ($product_price * $quantity);

	unset($_SESSION['items'][$product_id]);
}

// User Account Functions

function register_user($username, $email, $password){
	$username = escape($username);
	$email = escape($email);
	$password = escape($password);

	$password = md5($password);

	$query = query("INSERT INTO users (username, email, password, admin) VALUES ('$username', '$email', '$password', 0)");
	confirm_query($query);
}

function login_user($username, $password){
	$username = escape($username);
	$password = md5(escape($password));

	$query = query("SELECT * FROM users WHERE username = '$username' AND password = '$password'");
	confirm_query($query);

	if(mysqli_num_rows($query) == 0){
		return false;
	}
	else {
		return true;
	}
}

function logged_in(){
	if(isset($_SESSION['username'])){
		return true;
	}
	else {
		return false;
	}
}

function confirm_logged_in(){
	if(!logged_in()){
		redirect("login.php");
	}
}

?>