/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author YuuSachi
 */
public class CommentDAO {

    public Comment CommmentSL(Comment cm) throws Exception {
        JDBC.mo("DBTTTN");
        String sql = "declare @id int\n"
                + "	select @id = ( select top 1 ID_BL from BINHLUAN order by ID_BL DESC ) from BINHLUAN\n"
                + "	\n"
                + "	insert into BINHLUAN (ID_BL , MADT_BL, EMAIL_SDT_BL , TENKH_BL , CMT_BL , KQEXTRACT_BL)\n"
                + "	values (@id+1 , ? , ? , ? , ? , ?)";
        try {
            PreparedStatement ps = JDBC.con.prepareCall(sql);

            ps.setString(1, cm.getMADT_BL());
            ps.setString(2, cm.getEMAIL_SDT_BL());
            ps.setString(3, cm.getTENKH_BL());
            ps.setString(4, cm.getCMT_BL());
            ps.setInt(5, cm.getKQEXTRACT_BL());

            ResultSet rs = ps.executeQuery();
            return cm;
        } catch (SQLException e) {
        }
        return null;
    }

    
}
