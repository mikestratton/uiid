<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "uiid";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

if(){
	$db_result = "SELECT url FROM uiid WHERE user_type='Farmer'";
}
if(){
	$db_result = "SELECT url FROM uiid WHERE user_type='Geologist'";
}


$sql = "SELECT id, url FROM uiid";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Name: " . $row["url"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>