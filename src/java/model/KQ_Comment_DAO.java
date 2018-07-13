/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author YuuSachi
 */
public class KQ_Comment_DAO {
    public static ArrayList<KQ_Comment> CommmentKQ_BL(String id) throws Exception {
        ArrayList<KQ_Comment> ListKQ_BL = new ArrayList();
        JDBC.mo("DBTTTN");
        String sql = "select * from BINHLUAN where MADT_BL = '" + id + "'";
        try (ResultSet rs = JDBC.stm.executeQuery(sql)) {
            while (rs.next()) {
                String MADT_BL = rs.getString("MADT_BL");
                int KQEXTRACT_BL = rs.getInt("KQEXTRACT_BL");

                ListKQ_BL.add(new KQ_Comment(MADT_BL, KQEXTRACT_BL));
            }

        }
        //JDBC.dong();
        return ListKQ_BL;
    }
}
