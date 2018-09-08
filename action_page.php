<!DOCTYPE html>
<html>
<head>
	<title>CrackYourWay | BlackQR</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	 <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

	<style type="text/css">

	body{margin: 0; padding: 0; background: #f5f5f5;}
		.main-div{
			margin: 0px;
			padding: 20px; color: #262633;
			
		}
		.que-div{padding-bottom: 20px; font-size: 1.5em;
			border-bottom: solid 1px #262633;
		}
		.mcq-div{margin-top: 20px}
		.mcq-div > div{ float: none;
 			font-size: 1.3em; margin:10px 0; width: 100%;
		}
		.que-num{
			margin-right: 20px;
			height: 100%;
			background: #262633;
			color: #f5f5f5;
			text-align: center;
			padding: 10px;
			margin-bottom: 10px;
		}
	</style>
</head>
<body>
	<?php
	include 'myconn.php';
	session_start();
	if(!isset($_SESSION['uid'])){header('Location: index.php');}
	else{$userid=$_SESSION['uid'];}

	$quNo=$_SESSION['qno'];

	$cno=$_SESSION['cno'];
	if($cno=="21"){
		$dt=date("h:i:s");				
		$fhj=$conn->query("INSERT INTO winner(userId,time1) values('$userid','$dt')");
		header('Location:win.php');
	}
	$qAll=$conn->query("SELECT * from quetable where no=$quNo");
	$queAll=mysqli_fetch_array($qAll);
	$pAll=$conn->query("SELECT * from pnp");
	
	$par=array();
	$i=1;
	while($passAll=mysqli_fetch_assoc($pAll)){
		$par[$i][0]=$passAll['place'];
		$par[$i][1]=$passAll['password'];
		$i++;			
	}
	$rp=rand(1,5);
	$j=2;
	$fmcq= array();
	for ($i=0; $i <4 ; $i++) { 
		$fmcq[$i]=$queAll[$j]."<b> ".$par[$rp][0]."</b>";
		if($queAll[$j]==$queAll[6]){
			$op=$par[$rp][1];
			$conn->query("UPDATE passwordtable set password='$op' where uid='$userid'");
		}
		$j++;
		$rp=($rp+1)%5;
		if($rp==0){$rp=1;}
	}
	?>

	<div class="main-div">
		<div class="que-num"><span><?php echo $cno; ?> </span>/ 20</div>
		<div class="que-div"><?php echo $queAll[1]; ?></div>
		<div class="mcq-div">
			<div><div style="height: 100%; float: left; margin-right: 5px;">( a ) </div><span ><?php echo $fmcq[0]; ?></span></div><br>
			<div><div style="height: 100%; float: left; margin-right: 5px;">( b ) </div><span ><?php echo $fmcq[1]; ?></span></div><br>
			<div><div style="height: 100%; float: left; margin-right: 5px;">( c ) </div><span ><?php echo $fmcq[2]; ?></span></div><br>
			<div><div style="height: 100%; float: left; margin-right: 5px;">( d ) </div><span ><?php echo $fmcq[3]; ?></span></div><br>
		</div>
		<br>
		<form action="middle.php" method="post">
		<center><input type="password" class="form-control"  placeholder="Enter password" name="password1"><br>
			<button type="submit" class="btn btn-default">Submit</button>
			<br><br>

		</center>
		</form>
	</div>

</body>
</html>