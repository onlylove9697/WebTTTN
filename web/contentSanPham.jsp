
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.ContentSanPhamDAO"%>
<%@page import="model.ContentSanPham"%>
<%@page import="model.SystemHung"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body >

        <div class="container" >
            <div class="content">
                <div class="content-top">
                    <div class="content-top-in">
                        <%
                            int s = SystemHung.getday();
                        %>
                        <%
                            ArrayList<ContentSanPham> ListSP = ContentSanPhamDAO.ListContentSanPham();

                            for (int i = 0; i < ListSP.size(); i++) {
                                ContentSanPham dth = ListSP.get(i);
                        %>

                        <div class="col-md-3 md-col">

                            <div class="col-md">

                                <a href="chitietsanpham.jsp?MADT_DT=<%=dth.getMA_DT() %>"><img  src="images/phone/<%=dth.getHINHSP_DT()%>" alt="" /></a>

                                <div class="top-content">
                                    <h5><a href="#"><strong><%=dth.getTEN_DT()%></strong></a></h5>
                                    <div class="white">
                                        <%

                                            if (s > Integer.parseInt(dth.TUNGAY_DG) && s < Integer.parseInt(dth.DENNGAY_DG)) {
                                        %>
                                        <p style="color: red"><%=SystemHung.money( dth.getGIABAN_DG())%> VNĐ</p>
                                        <%} else {%>
                                        <p style="color: red">đang cập nhật !</p>
                                        <%}%>
                                        <a href="chitietsanpham.jsp?MADT_DT=<%=dth.getMA_DT() %>" class="button1">CHỌN</a>
                                        <div class="clearfix"></div>

                                    </div>
                                </div>							
                            </div>
                        </div>
                        <%}%>
                    </div>

                </div>

            </div>
            <div class="clearfix"></div>  
            <ul class="start">
                <li><a href="#"><i></i></a></li>
                <li class="arrow"><a href="">1</a></li>

                <li><a href="#"><i class="next"> </i></a></li>
            </ul>
        </div>
    </body>
</html>
