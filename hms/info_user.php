<?php
session_start();


include_once('include/config.php');

include('include/checklogin.php');
check_login();


$ret=mysqli_query($con,"SELECT * FROM appointment WHERE id='". $_GET['id'] . "'");
$num=mysqli_fetch_array($ret);


/*echo '<pre>';
print_r($num);
echo '</pre>';*/


?>

<!DOCTYPE html>
<html>
<body>

<style>
    .container{
        margin-top:20px;
    }
    .image-preview-input {
        position: relative;
        overflow: hidden;
        margin: 0px;
        color: #333;
        background-color: #fff;
        border-color: #ccc;
    }
    .image-preview-input input[type=file] {
        position: absolute;
        top: 0;
        right: 0;
        margin: 0;
        padding: 0;
        font-size: 20px;
        cursor: pointer;
        opacity: 0;
        filter: alpha(opacity=0);
    }
    .image-preview-input-title {
        margin-left:2px;
    }

    .gallery
    {
        display: inline-block;
        margin-top: 20px;
    }
</style>




<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h3 class="text-center" style="color: green;"><strong>Info:</strong>Patient Document</h3>
            <br>
        </div>
        <div class="col-sm-6" style="background-color:#aaa;">

            <link href="assets/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery-1.11.1.min.js"></script>
            <!------ Include the above in your HEAD tag ---------->

            <!--####
            ### How to add in your boostrap project
            1) Add jQuery "<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>"
            2) Download fancybox (https://github.com/fancyapps/fancyBox)
            3) Or use CDN (http://cdnjs.com/libraries/fancybox)
            ####--!>

            <!-- References: https://github.com/fancyapps/fancyBox -->
            <link rel="stylesheet" href="assets/css/jquery.fancybox.min.css" media="screen">
            <script src="assets/js/jquery.fancybox.min.js"></script>

            <div class="">
                <div class="">
                    <div class='list-group gallery'>

                        <?php
                        $ret=mysqli_query($con,"SELECT * FROM user_info WHERE appointment='". $_GET['id'] . "'");


                        while ($row = mysqli_fetch_array($ret)) { ?>
                            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                                <a class="thumbnail fancybox" rel="ligthbox" href="<?php echo $row['prescription_image']?>">
                                    <img class="img-responsive" alt="" src="<?php echo $row['prescription_image']?>" />
                                    <div class='text-right'>
                                        <small class='text-muted'>Image Title</small>
                                    </div> <!-- text-right / end -->
                                </a>
                            </div> <!-- col-6 / end -->

                        <?php } ?>






                    </div> <!-- list-group / end -->
                </div> <!-- row / end -->
            </div> <!-- container / end -->

        </div>
        <div class="col-sm-6">
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <form action="upload.php" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-3">
                        prescription_image:
                    </div>
                    <div class="col-sm-6">

                        <input type="file" name="fileToUpload" id="fileToUpload">
                        <input type="hidden" name="doctorId" value="<?php echo $num['doctorId']?>">
                        <input type="hidden" name="appointment" value="<?php echo $_GET['id']?>">
                        <input type="hidden" name="userId" value="<?php echo $num['userId']?>">

                    </div>
                    <div class="col-sm-3">
                        <input type="submit" value="Upload Image" name="submit">
                    </div>
                </div>

            </form>




        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        //FANCYBOX
        //https://github.com/fancyapps/fancyBox
        $(".fancybox").fancybox({
            openEffect: "none",
            closeEffect: "none"
        });
    });

</script>
</body>
</html>