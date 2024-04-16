<?php
function get_timeline_items(PDO $db, int $uid) {

  $stmt = $db->prepare("SELECT display_name, albums.name AS album_name, artists.name AS artist_name, stars, content, date FROM credentials, reviews, albums, artists WHERE reviews.user_id = credentials.user_id AND reviews.album_id = albums.album_id AND artists.artist_id = albums.artist_id AND credentials.user_id IN (SELECT followed_user_id FROM follows WHERE following_user_id = :user) LIMIT 100;");
  $stmt->bindParam(':user', $uid);
  
  $stmt->execute();
  $result = $stmt->fetchAll();

  return $result;
}
?>
