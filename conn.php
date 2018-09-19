<?php
define('NUM_ITEMS_BY_PAGE', 6);
$conn = mysqli_connect("localhost","root","","pibasa");
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>