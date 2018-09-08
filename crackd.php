<?php
// set the expiration date to one hour ago
setcookie("setc", "",  time() - (86400 * 60), "/");
if(!isset($_COOKIE["setc"])) {
    echo "Cookie named  is not set!";
} else {
    echo "Cookie  is set!<br>";
    echo "Value is: " ;
}
?>