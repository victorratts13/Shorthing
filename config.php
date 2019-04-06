<?php  


$dbusername='root';
$dbpassword='vertrigo';
$dbhost='localhost';
$dbname='encurtador';

$var='mysql:host='.$dbhost.';dbname='.$dbname;
$con = new PDO($var,$dbusername,$dbpassword);

?>