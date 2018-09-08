<?php
include 'myconn.php';
session_start();
$email=strtolower($_POST['email']);
$pass=strtolower($_POST['pwd']);

if (isset($_SESSION['msg'])) {
	unset($_SESSION['msg']);
}
$cs=$conn->query("select password from login where id='$email'");
if($cs){

	$c=mysqli_fetch_assoc($cs);
	
	if(!is_null($c['password'])){
		if($c['password']==$pass){
			$_SESSION['uid'] = $email;
			echo "login successful";	
			header('Location: middle.php');
		}else{
			$_SESSION['msg'] = "Invalid Password !";
			header('Location: index.php');
		}
	}
	else{
		$_SESSION['msg'] = "Try again !";
		header('Location: index1.php');
	}
}
else{
	$_SESSION['msg'] = "Invalid id and password";
	header('Location: index.php');
}
?>