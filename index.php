<?php 
/*
The index file will list all posts from the posts table.
A query is ran to select the columns from blog_posts then ordered by the postID in descending order.
*/
require('top.php');
require('includes/config.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Anh's Blog</title>
 	<link rel="stylesheet" href="style/normalize.css">
    <link rel="stylesheet" href="style/main.css">
</head>
<body>

	<div id="wrapper">
		<?php
			try {

				$stmt = $db->query('SELECT postID, postTitle, postDesc, postDate FROM blog_posts ORDER BY postID DESC');
				while($row = $stmt->fetch()){
					echo '<div id="home_post">';
						echo '<h1><a href="viewpost.php?id='.$row['postID'].'">'.$row['postTitle'].'</a></h1>';
						echo '<p id="post_time"> Posted on '.date('jS M Y H:i:s', strtotime($row['postDate'])).'</p>';
						echo '<p>'.$row['postDesc'].'</p>';				
						echo '<p><a href="viewpost.php?id='.$row['postID'].'">  
							<div id="readmore_box">
								Continue Reading
							</div>
						 </a></p>';				
						echo '<br>';
						echo '<hr class="style12">';
						echo '<br>';
					echo '</div>';
				}

			} catch(PDOException $e) {
			    echo $e->getMessage();
			}
		?>

	</div>
</body>
</html>
<?php require('footer.php'); ?>

