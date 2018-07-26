package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.KQ_Comment_DAO;
import model.KQ_Comment;
import model.SystemHung;
import model.ThongSoKiThuat;
import java.util.ArrayList;
import model.ThongSoKiThuatDAO;

public final class chitietsanpham_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Chi Tiết Sản Phẩm</title>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\n");
      out.write("        <script src=\"js/myjs.js\"></script>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/dashicons.min.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("            ");


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

            
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 col-sm-12\"  > \n");
      out.write("\n");
      out.write("                    <!-- Anh san pham -->\n");
      out.write("                    <div class=\"row \" style=\"margin-bottom: 30px; margin-top: 100px;\" >\n");
      out.write("                        <div class=\"primg\" >\n");
      out.write("                            <img src=\"images/phone/");
      out.print(tskt.getHINHSP_DT());
      out.write("\" alt=\"Ảnh chi tiết\"> <!--id=\"carousel-preview\"--> \n");
      out.write("\n");
      out.write("                            <div class=\"row lst_img\" style=\"margin-top: 30px;\">\n");
      out.write("                                <div class=\"column\">\n");
      out.write("                                    <img src=\"images/phone/");
      out.print(tskt.getHINHCT1_TSKT());
      out.write("\" style=\"width:100%\" onclick=\"openModal();currentSlide(1)\" class=\"hover-shadow cursor\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"column\">\n");
      out.write("                                    <img src=\"images/phone/");
      out.print(tskt.getHINHCT2_TSKT());
      out.write("\" style=\"width:100%\" onclick=\"openModal();currentSlide(2)\" class=\"hover-shadow cursor\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"column\">\n");
      out.write("                                    <img src=\"images/phone/");
      out.print(tskt.getHINHCT3_TSKT());
      out.write("\" style=\"width:100%\" onclick=\"openModal();currentSlide(3)\" class=\"hover-shadow cursor\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div style=\"margin-top: 30px; font-size: 30px;\">Giá Bán : <div style=\"color: red ; display: inline;\">");
      out.print(SystemHung.money(tskt.getGIABAN_DG()));
      out.write(" VNĐ</div></div>\n");
      out.write("                            <div id=\"myModal\" class=\"modal\">\n");
      out.write("                                <span class=\"close cursor\" onclick=\"closeModal()\">&times;</span>\n");
      out.write("                                <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                                    <div class=\"mySlides\">\n");
      out.write("                                        <div class=\"numbertext\">1 / 3</div>\n");
      out.write("                                        <img src=images/phone/");
      out.print(tskt.getHINHCT1_TSKT());
      out.write("\" style=\"width:100%\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"mySlides\">\n");
      out.write("                                        <div class=\"numbertext\">2 / 3</div>\n");
      out.write("                                        <img src=images/phone/");
      out.print(tskt.getHINHCT2_TSKT());
      out.write("\" style=\"width:100%\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"mySlides\">\n");
      out.write("                                        <div class=\"numbertext\">3 / 3</div>\n");
      out.write("                                        <img src=images/phone/");
      out.print(tskt.getHINHCT3_TSKT());
      out.write("\" style=\"width:100%\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <a class=\"prev\" onclick=\"plusSlides(-1)\">&#10094;</a>\n");
      out.write("                                    <a class=\"next\" onclick=\"plusSlides(1)\">&#10095;</a>\n");
      out.write("\n");
      out.write("                                    <div class=\"caption-container\">\n");
      out.write("                                        <p id=\"caption\"></p>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <div class=\"column\" >\n");
      out.write("                                        <img class=\"demo cursor\" src=images/phone/");
      out.print(tskt.getHINHCT1_TSKT());
      out.write("\" style=\"width:100%\" onclick=\"currentSlide(1)\" alt=\"Ảnh chi tiết\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"column\">\n");
      out.write("                                        <img class=\"demo cursor\" src=images/phone/");
      out.print(tskt.getHINHCT2_TSKT());
      out.write("\" style=\"width:100%\" onclick=\"currentSlide(2)\" alt=\"Ảnh chi tiết\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"column\">\n");
      out.write("                                        <img class=\"demo cursor\" src=images/phone/");
      out.print(tskt.getHINHCT3_TSKT());
      out.write("\" style=\"width:100%\" onclick=\"currentSlide(3)\" alt=\"Ảnh chi tiết\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!--                        <div class=\"lst_img\">\n");
      out.write("                                                    <ul>                              \n");
      out.write("                                                        <li><img id=\"carousel-selector-0\" src=\"images/phone/");
      out.print(tskt.getHINHCT1_TSKT());
      out.write("\" alt=\"Image\"></li>\n");
      out.write("                                                        <li><img id=\"carousel-selector-1\" src=\"images/phone/");
      out.print(tskt.getHINHCT2_TSKT());
      out.write("\" alt=\"Image\"></li>\n");
      out.write("                                                        <li><img id=\"carousel-selector-2\" src=\"images/phone/");
      out.print(tskt.getHINHCT3_TSKT());
      out.write("\" alt=\"Image\"></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>-->\n");
      out.write("                    </div>\n");
      out.write("                    <!--ket thuc anh san pham--> \t\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 detailsp\" >\n");
      out.write("                    <!--<div style=\"margin-top: 70px;font-size: 40px; text-align: center;\">Tên của sản phẩm</div>-->\n");
      out.write("                    <div class=\"gioithieu\">\n");
      out.write("\n");
      out.write("                        <h1 style=\"text-align: center;\">Điện thoại : ");
      out.print(tskt.getTEN_DT());
      out.write("</h1>\n");
      out.write("                        <br>\n");
      out.write("                        <h2>Thông số kỹ thuật</h2>\n");
      out.write("                        <ul class=\"parameter\">\n");
      out.write("                            <li><span>Màn hình:</span><div style=\"color: blue;\">");
      out.print(tskt.getMANHINH_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>Hệ điều hành:</span><div style=\"color: blue;\">");
      out.print(tskt.getHDH_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>Camera:</span><div style=\"color: blue;\">");
      out.print(tskt.getCAMERA_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>CPU:</span><div style=\"color: blue;\">");
      out.print(tskt.getCPU_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>RAM:</span><div style=\"color: blue;\">");
      out.print(tskt.getRAM_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>Bộ nhớ trong:</span><div style=\"color: blue;\">");
      out.print(tskt.getROM_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>SIM:</span><div style=\"color: blue;\">");
      out.print(tskt.getSIM_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>PIN:</span><div style=\"color: blue;\">");
      out.print(tskt.getPIN_TSKT());
      out.write("</div></li>\n");
      out.write("                            <li><span>Tính năng nổi bật:</span><div style=\"color: blue;\">");
      out.print(tskt.getTINHNANGNOIBAT_TSKT());
      out.write("</div></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <br>\n");
      out.write("                        <div style=\"font-size: 25px;\">Đã có <span style=\"color: blue;\">");
      out.print(SystemHung.CountComment(MADT_DT));
      out.write("</span> người đánh giá về sản phẩm</div>\n");
      out.write("                        <div style=\"font-size: 20px;\">Phần trăm người đánh giá khách quan về sản phẩm : <span style=\"color: red;\">");
      out.print(SystemHung.TinhPhanTram(MADT_DT.toString().trim()));
      out.write("</span> %</div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div style=\"border: 1px solid black;\"></div>\n");
      out.write("\n");
      out.write("            <form  action=\"CmtServlet\"  method=\"POST\">\n");
      out.write("                <div >\n");
      out.write("                    <div style=\"text-align: center; font-size: 30px; margin-top: 10px;\">Để lại ý kiến của bạn về sản phẩm</div>\n");
      out.write("                    <input type=\"hidden\" value=\"");
      out.print(MADT_DT);
      out.write("\" name=\"txtMaDT\"/>\n");
      out.write("                    <br>\n");
      out.write("                    <label>E-mail <label style=\"margin-left: 20px; margin-bottom: 10px;\"> :</label> </label>\n");
      out.write("                    <input style=\"width: 400px; margin-left: 25px;margin-bottom: 10px;\" id=\"txtEmail\" name=\"txtEmail\" placeholder=\"Mời Bạn nhập e-mail...\" rows=\"4\" cols=\"90\" type=\"text\">\n");
      out.write("                    <br>\n");
      out.write("                    <label>Tên <label style=\"margin-left: 37px;margin-bottom: 10px;\"> :</label></label>\n");
      out.write("                    <input style=\"width: 400px; margin-left: 25px;margin-bottom: 10px;\" id=\"txtName\" name=\"txtName\" placeholder=\"Mời Bạn nhập tên...\" rows=\"4\" cols=\"90\" type=\"text\">\n");
      out.write("                    <textarea style=\"margin-bottom: 10px;\" id=\"txtComment\" name=\"txtComment\" placeholder=\"Mời Bạn để lại bình luận...\" rows=\"4\" cols=\"180\" ></textarea>\n");
      out.write("                    <!--<a href=\"CmtServlet\" onclick=\"return  comment()\"  style=\"margin-left: 1035px; width: 100px; margin-bottom: 30px;\" class=\"button1\">Gửi</a>-->\n");
      out.write("                    <input style=\"margin-bottom: 30px;margin-left: 1035px; width: 100px;\" type=\"submit\" onclick=\"return comment()\" value=\"Bình luận\" />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
