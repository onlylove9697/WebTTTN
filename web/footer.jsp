
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>
        <!footer>
    <div class="footer" style="margin-top: 100px;">

        <!---->
        <div class="footer-middle" >
            <div class="container"  >
                <div class="row">
                    <div class="col-md-8">
                        <h3 style="color: white"> CÔNG TY CỔ PHẦN THƯƠNG MẠI THẾ GIỚI ĐIỆN THOẠI </h3>
                        <br>
                        <ul>
                            <li style="color: white"> Địa chỉ: 97 Man Thiện, Phường Hiệp Phú, Quận 9, TP.Hồ Chí Minh </li>
                            <li style="color: white"> Số điện thoại: (+84) 98 703 9697 </li>
                            <li style="color: white"> email: onlylove9697@gmail.com</li>
                        </ul>
                        <br>
                        <h3 style="color: white"> VỀ CHÚNG TÔI </h3>
                        <br>
                        <ul>
                            <li style="color: white"> PHẠM NGỌC HUY HÙNG - N14DCCN010</li>
                            
                        </ul>
                        
                        <a href="#"><p style="color: white; margin-top: 10px;">Quản Trị Viên</p></a>
                    </div>
                    <div class="col-md-offset-4">
                        <div class="footer-nav">
                            <h3 style="color: white">Thanh toán</h3>
                            <br>
                            <div class="nav-other payment">
                                <span>
                                    <img src="images/icons/visa.svg" style="width: 50px; margin-right: 5px;">
                                </span>
                                <span>
                                    <img src="images/icons/mastercard.svg" style="width: 50px; margin-right: 5px">
                                </span>
<!--                                <span>
                                    <img src="images/icons/than.png" style="width: 50px; margin-right: 5px;">
                                </span>-->
                            </div>
                            <br>
                            <h3 style="color: white">Follow US</h3>
                            <br>
                            <div class="nav-other payment">
                                <span>
                                    <a href="https://www.facebook.com" target="_blank"><img src="images/icons/facebook.svg" style="width: 40px; margin-right: 5px"></a>
                                </span>
                                <span>
                                    <a href="https://www.instagram.com" target="_blank"><img src="images/icons/instagram.svg" style="width: 40px; margin-right: 5px"></a>
                                </span>
                                <span>
                                    <a href="https://goo.gl/zFQGnT" target="_blank"><img src="images/icons/youtube.svg" style="width: 40px; margin-right: 5px"></a>
                                </span>
                            </div>
                            
                            
                            
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
<!--        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>-->
    </div>
</body>
</html>
