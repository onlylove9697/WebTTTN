

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <div id="fb-root"></div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=381324158709242";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <script>

        function startTime()
        {
            // Lấy Object ngày hiện tại
            var today = new Date();
            // Giờ, phút, giây hiện tại
            var y = today.getFullYear();
            var m = today.getMonth() + 1;
            var d = today.getDate();

            var h = today.getHours();
            var mm = today.getMinutes();
            var s = today.getSeconds();

            // Chuyển đổi sang dạng 01, 02, 03
            mm = checkTime(mm);
            s = checkTime(s);
            // Ghi ra trình duyệt
            document.getElementById('timer').innerHTML = h + ":" + mm + ":" + s ;
            //document.getElementById('date').innerHTML =  d + "-" + m + "-" + y;

            // Dùng hàm setTimeout để thiết lập gọi lại 0.5 giây / lần
            var t = setTimeout(function () {
                startTime();
            }, 500);
        }
        function checkTime(i)
        {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    </script>

</head>
<body onload="startTime()">

    <div style="margin-top: 0px;" class="header-bottom  navbar-fixed-top" >
        <div class="container"  >
            <div class="h_menu4" > 
                <!--<a class="toggleMenu" href="#">Menu</a>-->
                <ul class="nav" >
                    <li><a href="index.jsp"><img  src="images/phone/logo.png"/></a></li>
                    
                    <li><a href="SanPham.jsp" style="font-size: 25px" >Sản phẩm</a></li>
                    <!--<li><a id="timer" style="margin-left: 490px; font-size: 30px; color: springgreen;"></a></li>-->
                    <!--<li><a id="date" style=" font-size: 30px; color: pink;"></a></li>-->
                </ul>
                <script type="text/javascript" src="js/nav.js"></script>
            </div>
        </div>
    </div>

</body>
</html>
