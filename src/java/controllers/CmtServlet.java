/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Comment;
import model.CommentDAO;
import model.TuCamXuc;
import model.TuCamXuc_DAO;

/**
 *
 * @author YuuSachi
 */
public class CmtServlet extends HttpServlet {

    CommentDAO cmDAO = new CommentDAO();

    // khai báo biến 

    public static ArrayList<String> Terms ;
    public static ArrayList<Double> TermValues ;

    public static ArrayList<Double> G; // list chứa các trọng số khen và chê
    public static ArrayList<Double> N; // list chứa các trọng số chê
    public static ArrayList<Double> P; // list chứa các trọng số khen

    // Hàm tạo ra các vector G , P , N
    public static void createVector(ArrayList<Double> TermValue) {
        G = new ArrayList();
        G = TermValue; // gán list trọng số khen và chê vào list G
        N = new ArrayList<Double>();
        P = new ArrayList<Double>();

        for (int i = 0; i < G.size(); i++) { // duyệt list G để lọc ra khen/chê
            if (G.get(i) == 0) { // nếu từ đó k khen không chê ( trọng số = 0 ) thì ta đưa vào cả 2 vector khen và chê
                P.add(G.get(i));
                N.add(G.get(i));
                continue;
            } else if (G.get(i) < 0) { // nếu từ đó là chê ( trọng số âm ) gán vào N và gán 0 vào vector khen
                P.add(0.0);
                N.add(G.get(i));
            } else if (G.get(i) > 0) { // nếu là khen thì ngược lại với chê
                N.add(0.0);
                P.add(G.get(i));
            }
        }
    }

    // Hàm test hàm createVector()
    private static void checkVector() {
        ////////////--- Test vector ---////////////////

        ArrayList<Double> so = new ArrayList();
        so.add(1.0);
        so.add(2.0);
        so.add(-3.0);

        createVector(so);
        //ktra vector Tong ( G )
        for (int i = 0; i < G.size(); i++) {
            System.out.println("G : " + G.get(i));
        }
        //ktra vector khen ( P )
        for (int i = 0; i < P.size(); i++) {
            System.out.println("P : " + P.get(i));
        }
        //ktra vector chê ( N )
        for (int i = 0; i < N.size(); i++) {
            System.out.println("N : " + N.get(i));
        }
    }

    // Hàm tính Cosin
    private static double coSin(ArrayList<Double> X) {
        // cách tính (pow(N/P,2)/((sqrt(pow(N/P,2)))*(sqrt(pow(G,2))))
        double sumPowX = 0; // Tổng Pow P/N ( khen / chê )
        double sumPowG = 0; // Tổng Pow G ( tổng )
        double denominator = 0; // mẩu số
        for (int i = 0; i < G.size(); i++) {
            sumPowX += (double) Math.pow(X.get(i), 2); // Tổng bình phương vector N/P
            sumPowG += (double) Math.pow(G.get(i), 2); // Tổng bình phương vector G
        }
        denominator = Math.sqrt(sumPowX) * Math.sqrt(sumPowG); // căn sumPowX(P/N) * Căn SumPowG
        return (sumPowX / denominator);
    }

    // Hàm kết luận khen/chê
    public static int summary(){
        
        int str ;
        double cosinNG = (double) Math.round(coSin(N) * 1000) / 1000;
        double cosinPG = (double) Math.round(coSin(P) * 1000) / 1000;
        if (cosinPG == cosinNG) {
            str = 0;
        } else {
            if (cosinPG > cosinNG) {
                str = 1;
            } else {
                str = -1;
            }
        }

        //str += " | cosin(N,G)=" + cosinNG + " | consin(P,G)=" + cosinPG;

        //System.out.println("Summary : "+str);
        return str;
    }

    // Hàm rút trích
    public static String extracted(String textInput) throws Exception {
        String strTextOut = "";
        String getTu = "";
        Double getTS = 0.0;
        textInput = textInput.replace('!', '.'); // chuyển dấu kết ! -> .
        textInput = textInput.replace('?', '.'); // ? -> .
        //System.out.println(textInput);
        String[] tapCauHoanHao = textInput.split("\\."); // tách câu
        String[] tu;
        String[] tapCumTu;
        Terms = new ArrayList();
        TermValues = new ArrayList();
        
        for (String cauHoanHao : tapCauHoanHao) {

            cauHoanHao = cauHoanHao.replace(';', ','); // chuyển dấu kết ; -> ,

            tapCumTu = cauHoanHao.split("\\,"); // Tách câu

            for (String cumTu : tapCumTu) {
                tu = cumTu.split(" ");
                int start = 0;
                int stop = tu.length;
                boolean isStop = false;
                String Term = "";

                //JDBC.mo("Emo_Dictionary");
                while (isStop == false && stop >= 0) {
                    Term = "";
                    for (int i = start; i < stop; i++) {
                        Term += tu[i] + " ";
                    }

                    ArrayList<TuCamXuc> ArrTcx = TuCamXuc_DAO.List_TCX(Term.trim());
                    for (int i = 0; i < ArrTcx.size(); i++) {
                        TuCamXuc Emo = ArrTcx.get(i);
                        getTu = Emo.getTuCamXuc();
                        getTS = Emo.getTrongSo();
                    }
                    if (getTu != "") {
                        Terms.add(getTu.trim());
                        TermValues.add(getTS);
                        strTextOut += getTu + ": " + getTS + " | ";
                        if (start == 0) {
                            isStop = true;
                        } else {
                            stop = start - 1;
                            start = 0;
                        }
                    } else {
                        if (start == stop) {
                            stop--;
                            start = 0;
                        } else {
                            start++;
                        }
                    }
                    getTu = "";
                    getTS = 0.0;
                }
            }
            
        }
       return strTextOut;

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        Comment cm = new Comment();
        String url = "";
        HttpSession session = request.getSession();
        try {

            cm.setMADT_BL(request.getParameter("txtMaDT"));
            cm.setEMAIL_SDT_BL(request.getParameter("txtEmail"));
            cm.setTENKH_BL(request.getParameter("txtName"));
            cm.setCMT_BL(request.getParameter("txtComment"));

            extracted(request.getParameter("txtComment"));

            createVector(TermValues);
            int KQEXTRACT_BL = summary();
            cm.setKQEXTRACT_BL(KQEXTRACT_BL);

            cmDAO.CommmentSL(cm);
            url = "/index.jsp";
        } catch (Exception ex) {
            url = "/SanPham.jsp";
            Logger.getLogger(CmtServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

//            
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
