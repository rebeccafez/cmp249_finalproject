INSERT INTO artists (name, profile_pic_url) VALUES ("Julien Baker", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Boygenius_-_53085336671.jpg/367px-Boygenius_-_53085336671.jpg");

INSERT INTO albums (name, release_date, cover_art_url, copyright_info, artist_id) VALUES ("Turn Out the Lights", '2017-10-27', "https://i.discogs.com/02ac847FoxpFLKl77yfcUzX9vo2yn8mU1bimn99RurI/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExMDUy/NzU3LTE1MDg5NjE0/NDMtNDcyNC5qcGVn.jpeg", "2017 Matador Records", 1);

INSERT INTO tracks (position, name, run_length, album_id) VALUES (1, "Over", 88, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (2, "Appointments", 273, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (3, "Turn Out the Lights", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (4, "Shadowboxing", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (5, "Sour Breath", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (6, "Televangelist", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (7, "Everything to Help You Sleep", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (8, "Happy to Be Here", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (9, "Hurt Less", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (10, "Even", 203, 1);
INSERT INTO tracks (position, name, run_length, album_id) VALUES (11, "Claws in Your Back", 203, 1);

INSERT INTO credentials (handle, display_name, profile_pic_url, password_hash) VALUES ("rebeccafez", "Rebecca", "https://avatars.githubusercontent.com/u/92482068?s=400&u=33bded7911af4a0e9ea7074110205e045c3e1765&v=4", "$2a$10$I7toJSxKCQ4TmsedcQwczOKe87Tq09XTN.rFImvGP1jdrS7kuRDO.");
INSERT INTO credentials (handle, display_name, profile_pic_url, password_hash) VALUES ("ccarmeli", "Prof Carmeli", "https://avatars.githubusercontent.com/u/92482068?s=400&u=33bded7911af4a0e9ea7074110205e045c3e1765&v=4", "$2a$10$p7FmUsC4GYaAQG5j/1KA/.oOPykPxyJVY4xbqnNw60T3p.olZulXK");

INSERT INTO follows (following_user_id, followed_user_id) VALUES (1, 2);
INSERT INTO follows (following_user_id, followed_user_id) VALUES (2, 1);

INSERT INTO reviews (stars, content, user_id, album_id) VALUES (5, "I like this album a lot. I'd put more if this wasn't test data.", 1, 1);
