<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied..','_self');</script>";

	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>S.T.J High School</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<?php include"navbar.php";?><br>
		<img src="img/1.jpg" style="margin-left:90px;" class="sha">
			<div id="section">
				<?php include"sidebar.php";?><br>
				<div class="content">
					<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
						<h3 >About S.T.J High School</h3><br>
					<img src="img/home.jpg" class="imgs">
					<p class="para">
						S.T.J High School, popularly known as Anubhavamantapa is one of the reputed schools located in Davangere city, the heart of Karnataka. At a time when this commercial city was in dire need of a school which could not only cater to the highest levels of learning excellence but also imbibe values in lives, this institution, a brain child of His Holiness Sri Taralabalu Jagadguru 1108 Dr. Shivamurthy Shivacharya Mahaswamiji, was established in 1980-81.
					</p>
					<p class="para">
						Ever since its inception and now on the threshold of silver jubilee celebrations, the school has been rendering yeoman service in the field of education and has earned the admiration of parents, students, educationists and all. The new building that is on the verse of celebrating the silver jubilee has an enviable distinct style and structure, which could be equated with national and international standards.

                        Located in a relatively quiet part of the city, the school enjoys 30 acres of spacious, serene lush-green atmosphere conducive to effective and healthy learning. 2.5 Km. from both bus and Railway station of Davangere, the institution is accessible through the NH-4 and a broad gauge railway line, about 260 Km from the state capital, Bangalore, a journey of about 5 hours.
                        
                        Governed by the esteemed Sri Taralabalu Jagadguru Education Society (R) Sirigere, which has the distinction of serving the cause of education right from the Independence period, is now running 231 Institutions all over Karnataka which are mainly located in the rural areas to uplift the Educational, social, cultural and environmental standards. Through these institutions nearly 25,000 children get benefited every year and hats off to all those benevolent philanthropists, native and abroad, who have nurtured noble ideals of the Mutt in the cause of education.
					</p>
				</div>
			</div>
		<?php include"footer.php";?>
	</body>
</html>
