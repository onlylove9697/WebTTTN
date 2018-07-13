/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.DecimalFormat;
import java.util.ArrayList;

/**
 *
 * @author onlylove
 */
public class SystemHung {
    public static String money(int num) {
        DecimalFormat dFormat = new DecimalFormat();
        String formattedString = dFormat.format(num);
        return formattedString;
    }

    public static int getday() {
        String td = java.time.LocalDate.now().toString();
        String a = td.replaceAll("-", "");
        int b = Integer.parseInt(a);
        return b;
    }
    public static double TinhPhanTram(String id) throws Exception{
        double sum = 0 , kq ;
        System.out.println("Ma In : "+id);
        ArrayList<KQ_Comment> arrKQ = KQ_Comment_DAO.CommmentKQ_BL(id);
        for(int i = 0 ; i < arrKQ.size() ; i++){
            KQ_Comment cmkq = arrKQ.get(i);
            System.out.println("text KQ : "+cmkq.getKQEXTRACT_BL());
            if(cmkq.getKQEXTRACT_BL() == 1){
                sum +=1;
                System.out.println(cmkq.getKQEXTRACT_BL());
            }
            
        }
        System.out.println("% = "+(sum/arrKQ.size()));
        kq = Math.round((sum/arrKQ.size())*10000);
        kq = kq/100;
        return kq;
    }
    public static int CountComment(String id) throws Exception{
        ArrayList<KQ_Comment> arrKQ = KQ_Comment_DAO.CommmentKQ_BL(id); 
        return arrKQ.size();
    }
}
