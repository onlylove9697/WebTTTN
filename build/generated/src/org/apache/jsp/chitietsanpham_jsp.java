package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Chi Tiết Sản Phẩm</title>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\n");
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
      out.write("                ");

            ThongSoKiThuatDAO tsktDAO = new ThongSoKiThuatDAO();
            ThongSoKiThuat tskt = new ThongSoKiThuat();
            String MADT_DT = "";
            if (request.getParameter("MADT_DT") != null) {
                MADT_DT = request.getParameter("MADT_DT");
                tskt = tsktDAO.SelectTSKT(MADT_DT);
            }
            if(tskt.getTEN_DT()== null){
                tskt.setTEN_DT("Đang cập nhật .");
            }
            if(tskt.getMANHINH_TSKT()== null){
                tskt.setMANHINH_TSKT("Đang cập nhật .");
            }
            if(tskt.getHDH_TSKT()== null){
                tskt.setHDH_TSKT("Đang cập nhật .");
            }
            if(tskt.getCAMERA_TSKT() == null){
                tskt.setCAMERA_TSKT("Đang cập nhật .");
            }
            if(tskt.getCPU_TSKT()== null){
                tskt.setCPU_TSKT("Đang cập nhật .");
            }
            if(tskt.getRAM_TSKT()== null){
                tskt.setRAM_TSKT("Đang cập nhật .");
            }
            if(tskt.getROM_TSKT()== null){
                tskt.setROM_TSKT("Đang cập nhật .");
            }
            if(tskt.getSIM_TSKT()== null){
                tskt.setSIM_TSKT("Đang cập nhật .");
            }
            if(tskt.getPIN_TSKT()== null){
                tskt.setPIN_TSKT("Đang cập nhật .");
            }
            if(tskt.getTINHNANGNOIBAT_TSKT()== null){
                tskt.setTINHNANGNOIBAT_TSKT("Đang cập nhật .");
            }
            
        
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 col-sm-12\"  > \n");
      out.write("\n");
      out.write("                    <!-- Anh san pham -->\n");
      out.write("                    <div class=\"row \" style=\"margin-bottom: 30px; margin-top: 300px;\" >\n");
      out.write("                        <div class=\"primg\"> \n");
      out.write("                            <img id=\"myImg\" src=\"images/phone/");
      out.print(tskt.getHINHCT1_TSKT() );
      out.write("\" alt=\"Image\">\n");
      out.write("                            <div id=\"myModal\" class=\"modal\">\n");
      out.write("  <span class=\"close\">&times;</span>\n");
      out.write("  <img class=\"modal-content\" id=\"img01\">\n");
      out.write("  <div id=\"caption\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("// Get the modal\n");
      out.write("var modal = document.getElementById('myModal');\n");
      out.write("\n");
      out.write("// Get the image and insert it inside the modal - use its \"alt\" text as a caption\n");
      out.write("var img = document.getElementById('myImg');\n");
      out.write("var modalImg = document.getElementById(\"img01\");\n");
      out.write("var captionText = document.getElementById(\"caption\");\n");
      out.write("img.onclick = function(){\n");
      out.write("    modal.style.display = \"block\";\n");
      out.write("    modalImg.src = this.src;\n");
      out.write("    captionText.innerHTML = this.alt;\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Get the <span> element that closes the modal\n");
      out.write("var span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("\n");
      out.write("// When the user clicks on <span> (x), close the modal\n");
      out.write("span.onclick = function() { \n");
      out.write("    modal.style.display = \"none\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"lst_img\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><img id=\"carousel-selector-0\" src=\"images/phone/");
      out.print(tskt.getHINHCT1_TSKT() );
      out.write("\" alt=\"Image\"></li>\n");
      out.write("                                <li><img id=\"carousel-selector-1\" src=\"images/phone/");
      out.print(tskt.getHINHCT2_TSKT() );
      out.write("\" alt=\"Image\"></li>\n");
      out.write("                                <li><img id=\"carousel-selector-2\" src=\"images/phone/");
      out.print(tskt.getHINHCT3_TSKT() );
      out.write("\" alt=\"Image\"></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--ket thuc anh san pham--> \t\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 detailsp\" >\n");
      out.write("                    <!--<div style=\"margin-top: 70px;font-size: 40px; text-align: center;\">Tên của sản phẩm</div>-->\n");
      out.write("                    <div class=\"gioithieu\">\n");
      out.write("                        <div style=\"margin-top: 70px;font-size: 40px; text-align: center; color: #2A95FF\">Thông số kĩ thuật</div>\n");
      out.write("                        <div style=\"margin-top: 10px;font-size: 35px; text-align: center;\">Thiết bị : <div style=\"color: #E73737; display: inline;\">");
      out.print(tskt.getTEN_DT() );
      out.write("</div></div>\n");
      out.write("                        <br>\n");
      out.write("                        <tskt>Màn Hình : <tsktDB>");
      out.print(tskt.getMANHINH_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>HDH : <tsktDB>");
      out.print(tskt.getHDH_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>CAMERA : <tsktDB>");
      out.print(tskt.getCAMERA_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>CPU : <tsktDB>");
      out.print(tskt.getCPU_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>RAM : <tsktDB>");
      out.print(tskt.getRAM_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>ROM : <tsktDB>");
      out.print(tskt.getROM_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>SIM : <tsktDB>");
      out.print(tskt.getSIM_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>PIN : <tsktDB>");
      out.print(tskt.getPIN_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("                        <tskt>Tính năng nổi bật : <tsktDB>");
      out.print(tskt.getTINHNANGNOIBAT_TSKT());
      out.write("</tsktDB></tskt>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!--            <div class=\"soluong\">\n");
      out.write("                                    <h4>Giá của sản phẩm (VND) </h4>\n");
      out.write("                                    <div > <a href=\"#\" class=\"incrementor\" data-increment=\"down\"><span class=\"dashicons dashicons-minus\"></span></a>\n");
      out.write("                                        <input type=\"number\" id=\"\" class=\"input_sl no-spin\" step=\"1\" min=\"1\" max=\"\" name=\"\" value=\"1\" title=\"\" size=\"4\" pattern=\"[0-9]*\" inputmode=\"numeric\" aria-labelledby=\"\">\n");
      out.write("                                        <a href=\"#\" class=\"incrementor\" data-increment=\"up\"><span class=\"dashicons dashicons-plus\"></span></a> </div>\n");
      out.write("                                    <div style=\"margin: 50px 0 50px 0\">\n");
      out.write("                                        <button type=\"button\" class=\"btn btn-success btn-lg\"><span class=\"dashicons dashicons-cart iconbutton\"></span>Thêm vào giỏ</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>-->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!--Script chay xem truoc anh-->\n");
      out.write("        <script>\n");
      out.write("            jQuery(document).ready(function ($) {\n");
      out.write("                $('[id^=carousel-selector-]').click(function () {\n");
      out.write("                    var url_selector = $(this).attr(\"src\"); //tạo biến id_selector = thuộc tính id\n");
      out.write("                    $(\"#carousel-preview\").attr(\"src\", url_selector);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>");
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
