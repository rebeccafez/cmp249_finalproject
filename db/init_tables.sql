DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS follows;
DROP TABLE IF EXISTS credentials;
DROP TABLE IF EXISTS tracks;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  profile_pic_url VARCHAR(512)
);

CREATE TABLE albums (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  release_date DATE NOT NULL,
  cover_art_url VARCHAR(512) NOT NULL,
  copyright_info VARCHAR(200) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE tracks (
  track_id INT PRIMARY KEY AUTO_INCREMENT,
  position INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  run_length INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE credentials (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  handle VARCHAR(20) NOT NULL,
  display_name VARCHAR(50) NOT NULL,
  profile_pic_url VARCHAR(512),
  password_hash VARCHAR(255) NOT NULL,
  join_date DATE NOT NULL DEFAULT CURDATE()
);

CREATE TABLE follows (
  follow_id INT PRIMARY KEY AUTO_INCREMENT,
  following_user_id INT NOT NULL,
  followed_user_id INT NOT NULL,
  FOREIGN KEY (following_user_id) REFERENCES credentials(user_id),
  FOREIGN KEY (followed_user_id) REFERENCES credentials(user_id)
);

CREATE TABLE reviews (
  review_id INT PRIMARY KEY AUTO_INCREMENT,
  stars INT NOT NULL,
  content VARCHAR(1000),
  date DATE NOT NULL DEFAULT CURDATE(),
  user_id INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES credentials(user_id),
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);
