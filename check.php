<?php
//print_r($_POST);
//exit();
//session_start();
//error_reporting(0);
include('../hospital/hms/include/config.php');
//include('../hospital/hms/include/checklogin.php');
//check_login();
$name = $_POST["name"];
$email = $_POST["email"];
$comment = $_POST["comment"];
$mobile_number = $_POST["mobile_number"];


$sql = mysqli_query($con, "insert into contact(name, email, mobile_number, comment) values('$name','$email','$mobile_number','$comment')");

if($sql == TRUE){
   header('Location: http://localhost/hospital/contact.php'); 
  
}else{
    echo 'no';
}
?>
