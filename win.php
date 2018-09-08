<!DOCTYPE html>
<html>
<head>
	<title>CrackYourWay | BlackQR</title>
</head>
<style type="text/css">
	body{
		background: #f5f5f5;
		color: #262633;
		margin: 0; padding: 0;
	}
	.blackqr-logo{ position: absolute; z-index: 2;
   color: #000;
  height: 60px; width: 120px; font-size: 30px; font-weight: bold; top: 0;
text-align:center; vertical-align:middle; 
margin: 20px 0 0 40px;
   
}
.blackqr-logo img{ max-width: 100%; max-height: 100%;  }
center{margin: 0 10px; font-size: 2em;}
h2{}
</style>
<body>
	<div class="blackqr-logo"><img src="images/bq.png"></div>
<?php
include 'myconn.php';
	session_start();
	if(!isset($_SESSION['uid'])){header('Location: index.php');}
	else{$userid=$_SESSION['uid'];}
	$x=$conn->query("SELECT no,time1 from winner where userId='$userid'");
	$xx=mysqli_fetch_array($x);

?>
<br><br><br><br><br><br>
<br><br>

<center>You are at <b><?php echo $xx[0]; ?></b><br>Time : <b><?php echo $xx[1]; ?></b><br><br>Thank You.</center>
</body>
</html>