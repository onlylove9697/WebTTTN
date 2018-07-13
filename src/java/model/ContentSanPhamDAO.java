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
public class ContentSanPhamDAO {

    public static ArrayList<ContentSanPham> ListContentSanPham() throws Exception {
        ArrayList<ContentSanPham> ListSP = new ArrayList<>();
        JDBC.mo("DBTTTN");
        String sql = "select MA_DT,TEN_DT,HANG_DT,HINHSP_DT,GIABAN_DG,TUNGAY_DG,DENNGAY_DG from DIENTHOAI , DONGIA where DIENTHOAI.MA_DT = DONGIA.MADT_DG and getdate() > TUNGAY_DG and GETDATE() < DENNGAY_DG order by GIABAN_DG";
        try (ResultSet rs = JDBC.stm.executeQuery(sql)) {
            while (rs.next()) {
                String Ma_DT = rs.getString("MA_DT");
                String TEN_DT = rs.getString("TEN_DT");
                String HANG_DT = rs.getString("HANG_DT");
                String HINHSP_DT = rs.getString("HINHSP_DT");

                int GIABAN_DG = rs.getInt("GIABAN_DG");
                String TUNGAY_DG = rs.getString("TUNGAY_DG");
                String s = TUNGAY_DG.replaceAll("-", "");
                String s1 = s.substring(0, 8).trim();
                String DENNGAY_DG = rs.getString("DENNGAY_DG");
                String s2 = DENNGAY_DG.replaceAll("-", "");
                String s3 = s2.substring(0, 8).trim();

                ListSP.add(new ContentSanPham(Ma_DT, TEN_DT, HANG_DT, HINHSP_DT, GIABAN_DG, s1, s3));
            }

        }
        JDBC.dong();
        return ListSP;

    }
    
    public static void main(String[] args) {
    }
}
