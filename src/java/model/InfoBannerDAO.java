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
 * @author onlylove
 */
public class InfoBannerDAO {
    public static ArrayList<InfoBanner> ListInfoBanner() throws Exception {
        ArrayList<InfoBanner> ListBN = new ArrayList<>();
        JDBC.mo("DBTTTN");
        String sql = "select * from BANNER";
        try (ResultSet rs = JDBC.stm.executeQuery(sql)) {
            while (rs.next()) {
                String ID_BANNER = rs.getString("ID_BANNER");
                String HINH_BANNER = rs.getString("HINH_BANNER");

                ListBN.add(new InfoBanner(ID_BANNER, HINH_BANNER));
            }

        }
        JDBC.dong();
        return ListBN;
    }
}
