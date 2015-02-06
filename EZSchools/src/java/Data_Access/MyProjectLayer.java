package Data_Access;

import java.sql.*;
import java.text.*;
import java.util.*;
import myBeans.*;

public class MyProjectLayer {

    Connection con;
    Statement stmt;
    ResultSet rs;
    String msg;
    private String Date;
    private String date;

    private Connection myConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql:///eazy", "root", "");
            //con = DriverManager.getConnection("jdbc:mysql://localhost/thecafes_cafe", "thecafes_cafe", "atinsood!!!");
        } catch (Exception e) {
            System.out.println("Error while making connection : " + e);
        }
        return con;
    }

    public ArrayList getListEmp(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from employee ";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setIdStatus(rs.getString(14));
                i.setId(rs.getString(1));
                i.setSname(rs.getString(2));
                i.setUname(rs.getString(3));
                i.setGender(rs.getString(8));
                i.setPhone(rs.getString(9));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getListEmp :" + e);
        }
        return mlist;
    }

    public ArrayList getFullEmp(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            String q = "Select * from employee where id=" + eb.getId() + "";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setId(rs.getString(1));
                i.setSname(rs.getString(2));
                i.setUname(rs.getString(3));
                i.setDob(rs.getString(5));
                i.setState(rs.getString(6));
                i.setCity(rs.getString(7));
                i.setGender(rs.getString(8));
                i.setPhone(rs.getString(9));
                i.setEcp(rs.getString(10));
                i.setEphone(rs.getString(11));
                i.setAddr(rs.getString(12));
                i.setEmail(rs.getString(13));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getFullEmp :" + e);
        }
        return mlist;
    }
}