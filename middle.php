<?php

include 'myconn.php';
	session_start();
	if(!isset($_SESSION['uid'])){header('Location: index.php');}
		else{$userid=$_SESSION['uid'];}

	$ck=$conn->query("SELECT MAX( no ) AS max from $userid");
	$ckk=mysqli_fetch_array($ck);
	$v=$ckk[0];
	$vk=$conn->query("select queNo from $userid where no=$v");
	$vkk=mysqli_fetch_array($vk);

	if(isset($_POST['password1'])){
		$ps=$conn->query("SELECT password from passwordtable where uid='$userid'");
		$pss=mysqli_fetch_array($ps);
		$psd=$pss[0];
		$bef=strtolower($_POST['password1']);
		if($psd==$bef){
			
			$cm=(int)$v;
			$cm++;
			while(1){
				$sq=rand(1,46);				
				$insq=$conn->query("INSERT INTO $userid values($cm,$sq)");
				if($insq){
					$_SESSION['qno']=$sq;
					$_SESSION['cno']=$cm;
					header('Location: action_page.php');
					break;
				}
			}
		}
		else{
			//password not correct
			$_SESSION['qno']=$vkk[0];
			$_SESSION['cno']=$v;
			header('Location: action_page.php');
			
		}
	}
	else{
		
		if(is_null($vkk[0])){
			while(1){
				$sqe=rand(1,8);
				$insqe=$conn->query("INSERT INTO $userid values(1,$sqe)");
				if($insqe){
					$_SESSION['qno']=$sqe;
					$_SESSION['cno']=1;
					header('Location: action_page.php');
					break;
				}
			}
		}
		else{
			$_SESSION['qno']=$vkk[0];
			$_SESSION['cno']=$v;
			header('Location: action_page.php');

		}
	}

?>