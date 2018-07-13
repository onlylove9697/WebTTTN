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
public class TuCamXuc_DAO {
    public static ArrayList<TuCamXuc> List_TCX(String tucamxuc) throws Exception{
        ArrayList<TuCamXuc> tcx = new ArrayList();
        String sql = "select * from Emo_Dic where TU_CAM_XUC = N'"+tucamxuc+"'";
        JDBC.mo("Emo_Dictionary");
        try(ResultSet rs = JDBC.stm.executeQuery(sql)){
            while(rs.next()){
                String TuCanXuc = rs.getString("TU_CAM_XUC");
                Double TrongSo = rs.getDouble("TRONG_SO");
                Boolean HatGiong = rs.getBoolean("HAT_GIONG");
                
                tcx.add(new TuCamXuc(TuCanXuc, TrongSo, HatGiong));
            }
        }
        return tcx;
    }
    public static ArrayList<TuCamXuc> List_TCX() throws Exception{
        ArrayList<TuCamXuc> tcx = new ArrayList();
        String sql = "select * from Emo_Dic ";
        JDBC.mo("Emo_Dictionary");
        try(ResultSet rs = JDBC.stm.executeQuery(sql)){
            while(rs.next()){
                String TuCanXuc = rs.getString("TU_CAM_XUC");
                Double TrongSo = rs.getDouble("TRONG_SO");
                Boolean HatGiong = rs.getBoolean("HAT_GIONG");
                
                tcx.add(new TuCamXuc(TuCanXuc, TrongSo, HatGiong));
            }
        }
        return tcx;
    }
}
