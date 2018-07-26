<%@page import="model.KQ_Comment_DAO"%>
<%@page import="model.KQ_Comment"%>
<%@page import="model.SystemHung"%>
<%@page import="model.ThongSoKiThuat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ThongSoKiThuatDAO"%>
<%--<%@page contentType="text/html ; charset = UTF-8" pageEncoding="UTF-8"%>--%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi Tiết Sản Phẩm</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="js/myjs.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/dashicons.min.css" type="text/css">

    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
            <%

                ThongSoKiThuatDAO tsktDAO = new ThongSoKiThuatDAO();
                ThongSoKiThuat tskt = new ThongSoKiThuat();
                String MADT_DT = "";
                if (request.getParameter("MADT_DT") != null) {
                    MADT_DT = request.getParameter("MADT_DT");
                    tskt = tsktDAO.SelectTSKT(MADT_DT);
                }
                if (tskt.getTEN_DT() == null) {
                    tskt.setTEN_DT("Đang cập nhật .");
                }
                if (tskt.getMANHINH_TSKT() == null) {
                    tskt.setMANHINH_TSKT("Đang cập nhật .");
                }
                if (tskt.getHDH_TSKT() == null) {
                    tskt.setHDH_TSKT("Đang cập nhật .");
                }
                if (tskt.getCAMERA_TSKT() == null) {
                    tskt.setCAMERA_TSKT("Đang cập nhật .");
                }
                if (tskt.getCPU_TSKT() == null) {
                    tskt.setCPU_TSKT("Đang cập nhật .");
                }
                if (tskt.getRAM_TSKT() == null) {
                    tskt.setRAM_TSKT("Đang cập nhật .");
                }
                if (tskt.getROM_TSKT() == null) {
                    tskt.setROM_TSKT("Đang cập nhật .");
                }
                if (tskt.getSIM_TSKT() == null) {
                    tskt.setSIM_TSKT("Đang cập nhật .");
                }
                if (tskt.getPIN_TSKT() == null) {
                    tskt.setPIN_TSKT("Đang cập nhật .");
                }
                if (tskt.getTINHNANGNOIBAT_TSKT() == null) {
                    tskt.setTINHNANGNOIBAT_TSKT("Đang cập nhật .");
                }

            %>

            <div class="row">
                <div class="col-md-6 col-sm-12"  > 

                    <!-- Anh san pham -->
                    <div class="row " style="margin-bottom: 30px; margin-top: 100px;" >
                        <div class="primg" >
                            <img src="images/phone/<%=tskt.getHINHSP_DT()%>" alt="Ảnh chi tiết"> <!--id="carousel-preview"--> 

                            <div class="row lst_img" style="margin-top: 30px;">
                                <div class="column">
                                    <img src="images/phone/<%=tskt.getHINHCT1_TSKT()%>" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                                </div>
                                <div class="column">
                                    <img src="images/phone/<%=tskt.getHINHCT2_TSKT()%>" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
                                </div>
                                <div class="column">
                                    <img src="images/phone/<%=tskt.getHINHCT3_TSKT()%>" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
                                </div>
                            </div>
                            <div style="margin-top: 30px; font-size: 30px;">Giá Bán : <div style="color: red ; display: inline;"><%=SystemHung.money(tskt.getGIABAN_DG())%> VNĐ</div></div>
                            <div id="myModal" class="modal">
                                <span class="close cursor" onclick="closeModal()">&times;</span>
                                <div class="modal-content">

                                    <div class="mySlides">
                                        <div class="numbertext">1 / 3</div>
                                        <img src=images/phone/<%=tskt.getHINHCT1_TSKT()%>" style="width:100%">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">2 / 3</div>
                                        <img src=images/phone/<%=tskt.getHINHCT2_TSKT()%>" style="width:100%">
                                    </div>

                                    <div class="mySlides">
                                        <div class="numbertext">3 / 3</div>
                                        <img src=images/phone/<%=tskt.getHINHCT3_TSKT()%>" style="width:100%">
                                    </div>

                                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                    <a class="next" onclick="plusSlides(1)">&#10095;</a>

                                    <div class="caption-container">
                                        <p id="caption"></p>
                                    </div>


                                    <div class="column" >
                                        <img class="demo cursor" src=images/phone/<%=tskt.getHINHCT1_TSKT()%>" style="width:100%" onclick="currentSlide(1)" alt="Ảnh chi tiết">
                                    </div>
                                    <div class="column">
                                        <img class="demo cursor" src=images/phone/<%=tskt.getHINHCT2_TSKT()%>" style="width:100%" onclick="currentSlide(2)" alt="Ảnh chi tiết">
                                    </div>
                                    <div class="column">
                                        <img class="demo cursor" src=images/phone/<%=tskt.getHINHCT3_TSKT()%>" style="width:100%" onclick="currentSlide(3)" alt="Ảnh chi tiết">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--                        <div class="lst_img">
                                                    <ul>                              
                                                        <li><img id="carousel-selector-0" src="images/phone/<%=tskt.getHINHCT1_TSKT()%>" alt="Image"></li>
                                                        <li><img id="carousel-selector-1" src="images/phone/<%=tskt.getHINHCT2_TSKT()%>" alt="Image"></li>
                                                        <li><img id="carousel-selector-2" src="images/phone/<%=tskt.getHINHCT3_TSKT()%>" alt="Image"></li>
                                                    </ul>
                                                </div>-->
                    </div>
                    <!--ket thuc anh san pham--> 	
                </div>
                <div class="col-md-6 detailsp" >
                    <!--<div style="margin-top: 70px;font-size: 40px; text-align: center;">Tên của sản phẩm</div>-->
                    <div class="gioithieu">

                        <h1 style="text-align: center;">Điện thoại : <%=tskt.getTEN_DT()%></h1>
                        <br>
                        <h2>Thông số kỹ thuật</h2>
                        <ul class="parameter">
                            <li><span>Màn hình:</span><div style="color: blue;"><%=tskt.getMANHINH_TSKT()%></div></li>
                            <li><span>Hệ điều hành:</span><div style="color: blue;"><%=tskt.getHDH_TSKT()%></div></li>
                            <li><span>Camera:</span><div style="color: blue;"><%=tskt.getCAMERA_TSKT()%></div></li>
                            <li><span>CPU:</span><div style="color: blue;"><%=tskt.getCPU_TSKT()%></div></li>
                            <li><span>RAM:</span><div style="color: blue;"><%=tskt.getRAM_TSKT()%></div></li>
                            <li><span>Bộ nhớ trong:</span><div style="color: blue;"><%=tskt.getROM_TSKT()%></div></li>
                            <li><span>SIM:</span><div style="color: blue;"><%=tskt.getSIM_TSKT()%></div></li>
                            <li><span>PIN:</span><div style="color: blue;"><%=tskt.getPIN_TSKT()%></div></li>
                            <li><span>Tính năng nổi bật:</span><div style="color: blue;"><%=tskt.getTINHNANGNOIBAT_TSKT()%></div></li>
                        </ul>
                        <br>

                        <!--Modal-->
                        <jsp:include page="ModalShow.jsp"></jsp:include>

                        <div style="font-size: 25px;">Đã có <span style="color: blue;"><%=SystemHung.CountComment(MADT_DT)%></span> người đánh giá về sản phẩm</div>
                        <div style="font-size: 20px;">Phần trăm người đánh giá khách quan về sản phẩm : <span style="color: red;"><%=SystemHung.TinhPhanTram(MADT_DT.toString().trim())%></span> %</div>
                    </div>
                </div>
            </div>


        </div>

        <jsp:include page="Comment.jsp"></jsp:include>
        <jsp:include page="footer.jsp"></jsp:include>



    </body>
</html>