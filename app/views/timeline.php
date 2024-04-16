<?php
require_once 'lib/timeline.php';

$tl = get_timeline_items(2);
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CozyMusic</title>
  </head>
  <body>
    <header>
      <span id="site-name">CozyMusic</span>
      <nav>
      </nav>
    </header>
    <main>
      <section id="timeline">
        <?php foreach ($tl as $ti): ?>
        <article class="review">
          <?php 
          $stars = $ti['stars'];
          $display_name = $ti['display_name']; 
          $album_name = $ti['album_name']; 
          $artist_name = $ti['artist_name'];
          $content = $ti['content'];
          ?>
          <span class="stars"><?php for ($i=0; $i<$stars; $i++) { echo "⭐️"; } ?></span>
          <span class="username"><?php echo "$display_name reviewed $album_name by $artist_name"; ?></span>
          <blockquote>
            <?php echo "$content"; ?>
          </blockquote>
        </article>
        <?php endforeach ?>
      </section>
    </main>
  </body>
</html>
