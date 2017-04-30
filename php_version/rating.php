<?php 

$farmer = 0;
$surfer = 0;
$matches;
$usr = '';
$mike = "/mike";
$ed = "/ed";

$subject = "abcdef";
$pattern = '/^def/';
preg_match($pattern, $subject, $matches, PREG_OFFSET_CAPTURE, 3);
print_r($matches);

if (preg_match($mike, $usr, $matches))
{
	$farmer++;
	echo 'farmer up' . $farmer;
	echo $matches . "<br>";
}
$stupid = preg_match($mike, $usr, $matches);
	$farmer++;
	echo 'stupid';
	echo $matches . "<br>";



if (preg_match("/ed/i", $usr, $matches)) 
{
	$surfer++;
	echo 'surfer up' . $surfer;
	echo $matches . "<br>";
}



else
{
	echo 'mike go home';
}

?>

<h1>Enter your name</h1>

	<form method="post" action="rating.php">
	<input type="text" name="usr">
	<input type="submit">
	</form>
	

