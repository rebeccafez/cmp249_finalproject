<?php
// get mysql connection info from environment variables
$mysql_host = $_SERVER['MYSQL_HOST'];
$mysql_db = $_SERVER['MYSQL_DB'];
$mysql_user = $_SERVER['MYSQL_USER'];
$mysql_password = $_SERVER['MYSQL_PASSWORD'];

try {
  $db = new PDO("mysql:host=$mysql_host;dbname=$mysql_db", $mysql_user, $mysql_password);
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?> 
