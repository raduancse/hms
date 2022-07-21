<?php
session_start();
include_once('include/config.php');
include('include/checklogin.php');
check_login();


$target_dir = "../../images/";
$target_dir_insert = "../images/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$target_dir_insert = $target_dir_insert . basename($_FILES["fileToUpload"]["name"]);

$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    $appointment = $_POST['appointment'];
    $doctorId = $_POST['doctorId'];
    $userId = $_POST['userId'];

    $userId = $_POST['userId'];
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}



// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {

    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {



        $query = mysqli_query($con, "insert into user_info(appointment,prescription_image,doctorId,userId) values('$appointment','$target_dir_insert','$doctorId','$userId')");

        if ($query) {
            echo "<script>alert('Successfully upload. image ');</script>";
            header('location:appointment-history.php');
        }

        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
?>