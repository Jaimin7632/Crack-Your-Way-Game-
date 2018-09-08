<!DOCTYPE html>
<html>
<head>
  <title>Login | CrackYourWay</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <style type="text/css">
  body{margin: 0; padding: 0; background: #f5f5f5;}
  #page{opacity: 0; transition: all 1s linear 2.7s;  }
  
.pre-logo{pointer-events: none;
   height: 120px; width: 240px; position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%); 
   transition: all ease-out 0.8s 1.9s,opacity ease-out 0.5s 2.7s;
}
.pre-logo img{max-height: 100%; max-width: 100%; display: inline-block;}
.pre-logo .bsim{transform: translate(-200%,0%); opacity: 0; transition: all ease-in 0.8s; }
.pre-logo .qsim{position: absolute;right: 0; transition: all ease-in 0.8s 0.8s; transform: translate(30%,-200%); opacity: 0;}
.blackqr-logo{ position: absolute; z-index: 2;
   color: #000;
  height: 60px; width: 120px; font-size: 30px; font-weight: bold; top: 0;
text-align:center; vertical-align:middle; 
margin: 20px 0 0 40px;
   
}
.blackqr-logo img{ max-width: 100%; max-height: 100%;  }
  </style>
  <script>

window.onload=function(){
  
      
   function hidePreloader() {

     
      $('.bsim').css({"transform":"translate(0%,0%)","opacity":"1"});
      $('.qsim').css({"transform":"translate(0%,0%)","opacity":"1"});
      $('.pre-logo').css({"top":"0","left":"0","transform":"translate(0%,0%)","margin":"20px 0 0 40px","height":"60px","width":"120px"});
        
      $('#page').css({"opacity":"1"});
      $('.head-text').css({"opacity":"1"});
      $('.pre-logo').css({"opacity":"0"});
      
    }
    hidePreloader();
}
</script>

</head>
<body>
  <div class="pre-logo"><img class="bsim" src="images/bsim.png"><img class="qsim" src="images/qsim.png"></div>
  <div id="page">
  <div class="blackqr-logo"><img src="images/bq.png"></div>
<div class="container">
  <br><br><br><br><br><br>
  <h2>
  <?php
  session_start();

  if (isset($_SESSION['msg'])) {
    echo $_SESSION['msg'];
    
  }
    session_unset();
  ?>
</h2><br>
  <form action="logincheck.php" method="post">
    <div class="form-group">
      <label for="email">Id:</label>
      <input type="text" class="form-control"  placeholder="Enter id" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
   
    <button type="submit" class="btn btn-default">Log In</button>
  </form>
</div>
</div>
</body>
</html>