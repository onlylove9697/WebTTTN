/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author onlylove
 */
public class ThongSoKiThuatDAO {
    
    public static ThongSoKiThuat SelectTSKT(String MA_DT) throws Exception {
        JDBC.mo("DBTTTN");
        String sql = "select * from DIENTHOAI as DT , THONGSOKYTHUAT as TSKT , DONGIA as DG where dt.MA_DT = TSKT.MADT_TSKT and dt.MA_DT = dg.MADT_DG and dt.MA_DT = '"+MA_DT+"'";
        PreparedStatement ps = JDBC.con.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ThongSoKiThuat tskt = new ThongSoKiThuat();
        while (rs.next()) {
            tskt.setTEN_DT(rs.getString("TEN_DT"));
            tskt.setMANHINH_TSKT(rs.getString("MANHINH_TSKT"));
            tskt.setHDH_TSKT(rs.getString("HDH_TSKT"));
            tskt.setCAMERA_TSKT(rs.getString("CAMERA_TSKT"));
            tskt.setCPU_TSKT(rs.getString("CPU_TSKT"));
            tskt.setRAM_TSKT(rs.getString("RAM_TSKT"));
            tskt.setROM_TSKT(rs.getString("ROM_TSKT"));
            tskt.setSIM_TSKT(rs.getString("SIM_TSKT"));
            tskt.setPIN_TSKT(rs.getString("PIN_TSKT"));
            tskt.setTINHNANGNOIBAT_TSKT(rs.getString("TINHNANGNOIBAT_TSKT"));
            tskt.setGIABAN_DG(rs.getInt("GIABAN_DG"));
            tskt.setHINHSP_DT(rs.getString("HINHSP_DT"));
            tskt.setHINHCT1_TSKT(rs.getString("HINHCT1_TSKT"));
            tskt.setHINHCT2_TSKT(rs.getString("HINHCT2_TSKT"));
            tskt.setHINHCT3_TSKT(rs.getString("HINHCT3_TSKT"));
            
        }
        return tskt;
    }
}
