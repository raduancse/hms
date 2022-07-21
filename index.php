
<?php
//error_reporting(0);
include('hms/include/config.php');
?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Online Doctor Appointment</title>
        <link rel="icon" href="images/smile.png">
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/responsiveslides.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {

                // Slideshow 1
                $("#slider1").responsiveSlides({
                    maxwidth: 1600,
                    speed: 600
                });
            });
        </script>

        <script>

            function getdoctor(val) {
                $.ajax({
                    type: "POST",
                    url: "get_doctor.php",
                    data: 'specilizationid=' + val,
                    success: function (data) {
                        $("#doctor").html(data);
                    }
                });
            }
        </script>
        <style>
            input[type=text], select {
                padding: 12px 0px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin:13px -9px 0px 22px;
                background-color: #343148;
                color:#fff;
            }

            input[type=submit] {
                width: 100%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 17px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .raduanselect{
                border-radius: 5px;
                float:left;
            }
        </style>
    </head>
    <body>
        <!--start-wrap-->

        <!--start-header-->
        <div class="header">
            <div class="wrap">
                <!--start-logo-->
                <div class="logo">
                    <a href="index.php" style="font-size:30px">Online Doctor Appointment</a>
                </div>
                <div class="raduanselect">

                    <form role="form" name="book" method="post">
                        <label for="Search Doctor">
                        </label>
                        <select name="Search Doctor"
                                onChange="getdoctor(this.value);" required="required">
                            <option value="">Search Doctor</option>
                            <?php
                            $ret = mysqli_query($con, "select * from doctorspecilization");
                            while ($row = mysqli_fetch_array($ret)) {
                                ?>
                                <option value="<?php echo htmlentities($row['specilization']); ?>">
                                    <?php echo htmlentities($row['specilization']); ?>
                                </option>
                            <?php } ?>

                        </select>
                        <label for="doctor">
                        </label>
                        <select name="Select Doctor"  id="doctor"
                                onChange="getfee(this.value);" required="required">
                            <option value="">Select Doctor</option>
                        </select>
                    </form>
                </div>



                <!--end-logo-->
                <!--start-top-nav-->
                <div class="top-nav" >

                    <ul>
                        <li class="active"><a href="index.php">Home</a></li>
                        <li><a href="about_us.php">About Us</a></li>			
                        <li><a href="services.php">Services</a></li>			
                        <li><a href="contact.php">Contact</a></li>
                    </ul>					
                </div>
                <div class="clear"> </div>
                <!--end-top-nav-->
            </div>
        </div>
        <!--end-header-->
    </div>
    <div class="clear"> </div>
    <!--start-image-slider---->
    <div class="image-slider">
        <!-- Slideshow 1 -->
        <ul class="rslides" id="slider1">
            <li><img src="images/r1.jpg " alt=""></li>
            <li><img src="images/r2.jpg" alt=""></li>
            <li><img src="images/r3.jpg" alt=""></li>

        </ul>
        <!-- Slideshow 2 -->
    </div>
    <!--End-image-slider---->
    <div class="clear"> </div>
    <div class="content-grids">
        <div class="wrap">
            <div class="section group">


                <div class="listview_1_of_3 images_1_of_3">
                    <div class="listimg listimg_1_of_2">
                        <img src="images/patient.png">
                    </div>
                    <div class="text list_1_of_2">
                        <h3>Patients</h3>
                        <p>Register & Book Appointment</p>
                        <div class="button"><span><a href="hms/user-login.php">Click Here</a></span></div>
                    </div>
                </div>	

                <div class="listview_1_of_3 images_1_of_3">
                    <div class="listimg listimg_1_of_2">
                        <img src="images/doctor.png">
                    </div>
                    <div class="text list_1_of_2">
                        <h3>Doctors Login</h3>

                        <div class="button"><span><a href="hms/doctor/">Click Here</a></span></div>
                    </div>
                </div>


                <div class="listview_1_of_3 images_1_of_3">
                    <div class="listimg listimg_1_of_2">
                        <img src="images/admin.jpg">
                    </div>
                    <div class="text list_1_of_2">
                        <h3>Admin Login</h3>

                        <div class="button"><span><a href="hms/admin">Click Here</a></span></div>
                    </div>
                </div>			
            </div>
        </div>
    </div>
    <div class="wrap">
        <div class="content-box">
            <div class="section group">
                <div class="col_1_of_3 span_1_of_3 frist">

                </div>
                <div class="col_1_of_3 span_1_of_3 second">

                </div>
                <div class="col_1_of_3 span_1_of_3 frist">


                </div>
            </div>
        </div>
    </div>
    <div class="clear"> </div>
    <div class="footer">
        <div class="wrap">
            <div class="footer-left">
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="about_us.php">About Us</a></li>
                    <li><a href="services.php">Services</a></li>
                    <li><a href="contact.php">Contact</a></li>
                </ul>
            </div>
            <div class="footer-right">

                <a href="#" id="Home" >  Click To Top</a>
            </div>
            <div>
                <p > &copy;2018 Online Doctor Appointment | All Rights Reserved | Developed by Md. Raduan Islam </p>
            </div>

            <div class="clear"> </div>
        </div>
    </div>
    <!--end-wrap-->
</body>
</html>

