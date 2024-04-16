<?php
require_once 'lib/auth.php'; 
require_once 'lib/db.php'; 

$handle = filter_input(INPUT_POST, 'username');
$password = filter_input(INPUT_POST, 'password');

$error = "";

if (isset($handle)) {
  if (check_creds($db, $handle, $password)) {
    $_SESSION['uid'] = get_uid($db, $handle);
    include 'timeline.php';
    die();
  } 
  else {
    $error = "Invalid username or password";
  }
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CozyMusic Login</title>
  </head>
  <body>
    <header>
      <span id="site-name">CozyMusic</span>
    </header>
    <div id="errors">
      <?php echo $error ?>
    </div>
    <main>
      <form action="login.php" method="post">
        <input type="text" name="username" placeholder="Username"><br />
        <input type="password" name="password" placeholder="Password"><br />
        <input type="submit" value="Login">
      </form>
    </main>
  </body>
</html>
