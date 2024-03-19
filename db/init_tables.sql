CREATE TABLE artists (
  artist_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  profile_pic_url VARCHAR(512) NOT NULL
);

CREATE TABLE albums (
  album_id INT PRIMARY KEY,
  release_date DATE NOT NULL,
  cover_art_url VARCHAR(512) NOT NULL,
  copyright_info VARCHAR(200) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE tracks (
  track_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  run_length INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE credentials (
  user_id INT PRIMARY KEY,
  handle VARCHAR(20) NOT NULL,
  display_name VARCHAR(50) NOT NULL,
  profile_pic_url VARCHAR(512),
  password_hash VARCHAR(255) NOT NULL,
  join_date DATE NOT NULL DEFAULT CURDATE()
);

CREATE TABLE follows (
  follow_id INT PRIMARY KEY,
  following_user_id INT NOT NULL,
  followed_user_id INT NOT NULL,
  FOREIGN KEY (following_user_id) REFERENCES credentials(user_id),
  FOREIGN KEY (followed_user_id) REFERENCES credentials(user_id)
);

CREATE TABLE reviews (
  review_id INT PRIMARY KEY,
  stars INT NOT NULL,
  content VARCHAR(1000),
  date DATE NOT NULL DEFAULT CURDATE(),
  user_id INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES credentials(user_id),
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);
