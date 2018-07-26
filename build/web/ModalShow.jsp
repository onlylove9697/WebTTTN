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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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


            <!-- Trigger the modal with a button -->
            <button type="button" id="myBtn1" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">Open Modal</button>

            <!-- Modal -->
            <div class="modal" id="myModal1" role="dialog">
                <div class="modal-dialog" >

                    <!-- Modal content-->
                    <div class="modal-content" >
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body">
                            <p><%=tskt.TEN_DT %></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <script>
            $(document).ready(function () {
                $("#myBtn1").click(function () {
                    $("#myModal1").modal();
                });
            });
        </script>

    </body>
</html>


