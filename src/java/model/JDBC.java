package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author onlylove
 */
public class JDBC {
static Connection con;
    static Statement stm;

    public static void mo(String db) throws Exception{
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
        con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName="+db+";", "sa", "12");
        stm = con.createStatement();
            //System.out.println("TC");
        }catch(Exception e){
            //System.out.println("TB");
        }
        
    }

    public static void dong() throws Exception {
        con.close();
        stm.close();
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, Exception {
        //JDBC.mo();
        
    }

    static PreparedStatement prepareCall(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
