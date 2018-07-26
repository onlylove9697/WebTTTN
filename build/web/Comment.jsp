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

    </head>

    <body>

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


            <div style="border: 1px solid black;"></div>

            <form  action="CmtServlet"  method="POST">
                <div >
                    <div style="text-align: center; font-size: 30px; margin-top: 10px;">Để lại ý kiến của bạn về sản phẩm</div>
                    <input type="hidden" value="<%=MADT_DT%>" name="txtMaDT"/>
                    <br>
                    <label>E-mail <label style="margin-left: 20px; margin-bottom: 10px;"> :</label> </label>
                    <input style="width: 400px; margin-left: 25px;margin-bottom: 10px;" id="txtEmail" name="txtEmail" placeholder="Mời Bạn nhập e-mail..." rows="4" cols="90" type="text">
                    <br>
                    <label>Tên <label style="margin-left: 37px;margin-bottom: 10px;"> :</label></label>
                    <input style="width: 400px; margin-left: 25px;margin-bottom: 10px;" id="txtName" name="txtName" placeholder="Mời Bạn nhập tên..." rows="4" cols="90" type="text">
                    <textarea style="margin-bottom: 10px;" id="txtComment" name="txtComment" placeholder="Mời Bạn để lại bình luận..." rows="4" cols="180" ></textarea>
                    <!--<a href="CmtServlet" onclick="return  comment()"  style="margin-left: 1035px; width: 100px; margin-bottom: 30px;" class="button1">Gửi</a>-->
                    <input style="margin-bottom: 30px;margin-left: 1035px; width: 100px;" type="submit" onclick="return comment()" value="Bình luận" />
                </div>


            </form>

        </div>

    </body>
</html>


