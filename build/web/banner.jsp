
<%@page import="java.util.ArrayList"%>
<%@page import="model.InfoBanner"%>
<%@page import="model.InfoBannerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <div class="container " style="margin-top: 100px;">
            <div class="slider rslides">           
                <ul class="rslides" id="slider1">
                    <%
                        ArrayList<InfoBanner> ListBN = InfoBannerDAO.ListInfoBanner();

                        for (int i = 0; i < ListBN.size(); i++) {
                            InfoBanner infoBN = ListBN.get(i);
                    %>
                    <li><img src="images/banner/<%=infoBN.getHINH_BANNER()%>" alt="Đây là banner !"></li>
                    <%}%>
                </ul>
            </div>
        </div>
    </body>
</html>
