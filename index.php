 <ul id="topbar_ul">
  <span>
   	<li id="topbar"><a href="index.php"> HOME </a></li>
  	<li id="topbar"><a href="admin/login.php"> . WRITE! </a></li>
  </span>
  <span style=" width:300px;
 			    padding-top:5px;
  				border-style:solid;
  				border-color:#FFFFFF;
  				border-width:1px;
  				padding-left:10px;
  				padding-bottom:5px;
  				padding-right: 10px;
  				border-radius: 25px;
  				font-style: bold;
  				color:#FFFFFF;
  				">
		NUS CVWO Assignment 1
</span>
 </ul> 

<?php 
/*
The index file will list all posts from the posts table.
A query is ran to select the columns from blog_posts then ordered by the postID in descending order.
*/

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
		<h1>
  			<span>Anh's</span><span style="color:#F7B731; font-family: Georgia;">Blog</span>
		</h1>
		<?php
			try {

				$stmt = $db->query('SELECT postID, postTitle, postDesc, postDate FROM blog_posts ORDER BY postID DESC');
				while($row = $stmt->fetch()){
					
					echo '<div id="home_post">';
						echo '<h1><a href="viewpost.php?id='.$row['postID'].'">'.$row['postTitle'].'</a></h1>';
						echo '<p style="font-size:0.9em;"> Posted on '.date('jS M Y H:i:s', strtotime($row['postDate'])).'</p>';
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


