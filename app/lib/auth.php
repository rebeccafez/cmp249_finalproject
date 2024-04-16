<?php
function check_creds(PDO $db, string $handle, string $password) {
  $stmt = $db->prepare("SELECT handle, password_hash FROM credentials WHERE handle = :handle");
  $stmt->bindParam('handle', $handle);
  $stmt->execute();

  $result = $stmt->fetch();
  
  if ($result && password_verify($password, $result['password_hash'])) {
    return true;
  }
  else {
    return false;
  }
}

function get_uid(PDO $db, string $username) {
  $stmt = $db->prepare("SELECT user_id FROM credentials WHERE handle = :handle");
  $stmt->bindParam('handle', $username);
  $stmt->execute();

  $row = $stmt->fetch();
  $uid = $row['user_id'];

  return $uid;
}
?>
