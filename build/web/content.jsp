
<%@page import="model.SanPhamNoiBatDAO"%>
<%@page import="model.SanPhamNoiBat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SystemHung"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <!---->
        <div class="container" >
            <div class="content">
                <div class="content-top">
                    <div class="content-top-in">
                        <%
                            int s = SystemHung.getday();
                        %>
                        <%
                            ArrayList<SanPhamNoiBat> ListSPNB = SanPhamNoiBatDAO.ListSanPhamNoiBat();

                            for (int i = 0; i < ListSPNB.size(); i++) {
                                SanPhamNoiBat spnb = ListSPNB.get(i);
                        %>

                        <div class="col-md-3 md-col">

                            <div class="col-md">

                                <a href="chitietsanpham.jsp?MADT_DT=<%=spnb.getMA_DT() %>"><img  src="images/phone/<%=spnb.getHINHSP_DT()%>" alt="" /></a>

                                <div class="top-content">
                                    <h5><a href="#"><strong><%=spnb.getTEN_DT()%></strong></a></h5>
                                    <div class="white">
                                        <%

                                            if (s > Integer.parseInt(spnb.TUNGAY_DG) && s < Integer.parseInt(spnb.DENNGAY_DG)) {
                                        %>
                                        <p style="color: red"><%=SystemHung.money( spnb.getGIABAN_DG())%> VNĐ</p>
                                        <%} else {%>
                                        <p style="color: red">đang cập nhật !</p>
                                        <%}%>
                                        <a href="chitietsanpham.jsp?MADT_DT=<%=spnb.getMA_DT() %>"  class="button1">CHỌN</a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>							
                            </div>
                        </div>
                        <%}%>
                    </div>

                </div>
                    
            </div>
                    
        </div>
    </body>
</html>
