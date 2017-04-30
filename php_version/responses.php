<?php

// require 'db.php';

$response = '';
$input = $_POST["question"];

$farmer = strpos($input, 'farm');

if ($farmer !== false) {
    $response = 'we found the lost farmer';
}

if (strpos($input, 'geolog') !== false) {
    $response = 'go get me a rock';
}





?>
<html>
<body>





<?php echo "<br><br>" . $response; ?>

</body>
</html>