package Data_Access;

import java.sql.*;
import java.text.*;
import java.util.*;
import myBeans.*;

public class MyProjectLayer {

    Connection con;
    Statement stmt;
    String q;
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

    public String LoginEmp(EazyBeans eb) {
        String status = "failed";
        String typ = eb.getUtype();
        try {
            con = myConnection();
            stmt = con.createStatement();
            if (typ.equals("admin")) {
                String getLogin = "select * from admin where username='" + eb.getUname() + "' and password='" + eb.getPass() + "'";
                ResultSet rd = stmt.executeQuery(getLogin);
                if (rd.next()) {
                    status = "done" + "/" + rd.getString(1) + "/" + rd.getString(4);
                }
            } else if (typ.equals("school")) {
                String getLoginP = "select * from school where username='" + eb.getUname() + "' and password='" + eb.getPass() + "'";
                ResultSet rd = stmt.executeQuery(getLoginP);
                if (rd.next()) {
                    status = "done" + "/" + rd.getString(1) + "/" + rd.getString(3) + "/" + rd.getString(2) + "/" + rd.getString(9);
                }
            } else if (typ.equals("employee")) {
                String getLoginE = "select * from employee where username='" + eb.getUname() + "' and password='" + eb.getPass() + "'";
                System.out.println(getLoginE);
                ResultSet rb = stmt.executeQuery(getLoginE);
                if (rb.next()) {
                    status = "done" + "/" + eb.getUname() + "/" + rb.getString(1) + "/" + rb.getString(2) + "/" + rb.getString(14);
                }
            } else if (typ.equals("guardian")) {
                String getLoginParent = "select * from parent where username='" + eb.getUname() + "' and password='" + eb.getPass() + "'";
                ResultSet rx = stmt.executeQuery(getLoginParent);
                if (rx.next()) {
                    status = "done" + "/" + eb.getUname() + "/" + rx.getString(1) + "/" + rx.getString(5) + "/" + rx.getString(21);
                }
            } else if (typ.equals("teacher")) {
                String getLoginTeacher = "select * from teacher where username='" + eb.getUname() + "' and password='" + eb.getPass() + "'";
                ResultSet ry = stmt.executeQuery(getLoginTeacher);
                if (ry.next()) {
                    status = "done" + "/" + eb.getUname() + "/" + ry.getString(1) + "/" + ry.getString(2) + "/" + ry.getString(15);
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in LoginEmp : " + e);
        }
        return status;
    }

    public String getSchoolRegister(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "insert into school(status,schoolname,username,password,board,medium,state,city) values('1','" + eb.getSname() + "','" + eb.getUname() + "','" + eb.getUname() + "','" + eb.getBoard() + "','" + eb.getMedium() + "','" + eb.getState() + "','" + eb.getCity() + "')";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in getSchoolRegister : " + e);
        }
        return status;
    }

    public ArrayList getListClient(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from school ";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setIdStatus(rs.getString(9));
                i.setId(rs.getString(1));
                i.setSname(rs.getString(2));
                i.setUname(rs.getString(3));
                i.setState(rs.getString(7));
                i.setCity(rs.getString(8));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getListClient :" + e);
        }
        return mlist;
    }

    public ArrayList getListEmp(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from employee ";
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

    public ArrayList getListTeacher(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from teacher where principalid='" + eb.getId() + "'";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setIdStatus(rs.getString(16));
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

    public String deleteSchool(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "delete from school where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                String h = "delete from teaher where principalid='" + eb.getId() + "'";
                int f = stmt.executeUpdate(h);
                if (f > 0) {
                    String l = "delete from parent where principalid='" + eb.getId() + "'";
                    int k = stmt.executeUpdate(l);
                    if (k > 0) {
                        status = "done";
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in deleteSchool : " + e);
        }
        return status;
    }

    public String deleteTeacher(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "delete from teacher where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in deleteTeacher : " + e);
        }
        return status;
    }

    public String deleteEmployee(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "delete from employee where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in deleteEmployee : " + e);
        }
        return status;
    }

    public String deactivateSchool(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "update school set status='0' where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                String k = "update teacher set status='0' where principalid=" + eb.getId() + "";
                int l = stmt.executeUpdate(k);
                if (l > 0) {
                    String lk = "update parent set status='0' where principalid=" + eb.getId() + "";
                    int c = stmt.executeUpdate(lk);
                    if (c > 0) {
                        status = "done";
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in deactivateSchool : " + e);
        }
        return status;
    }

    public String deactivateTeacher(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "update teacher set status='0' where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in deactivateTeacher : " + e);
        }
        return status;
    }

    public String activateSchool(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "update school set status='1' where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                String cq = "update teacher set status='1' where principalid=" + eb.getId() + "";
                int a = stmt.executeUpdate(cq);
                if (a > 0) {
                    String kl = "update parent set status='1' where principalid=" + eb.getId() + "";
                    int ol = stmt.executeUpdate(kl);
                    if (ol > 0) {
                        status = "done";
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in activateSchool : " + e);
        }
        return status;
    }

    public String activateTeacher(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "update teacher set status='1' where id=" + eb.getId() + "";
            int i = stmt.executeUpdate(q);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in activateTeacher : " + e);
        }
        return status;
    }

    public ArrayList getFullClient(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from school where id=" + eb.getId() + "";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setIdStatus(rs.getString(9));
                i.setId(rs.getString(1));
                i.setSname(rs.getString(2));
                i.setUname(rs.getString(3));
                i.setState(rs.getString(7));
                i.setBoard(rs.getString(5));
                i.setMedium(rs.getString(6));
                i.setCity(rs.getString(8));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getFullClient :" + e);
        }
        return mlist;
    }

    public ArrayList getFullEmp(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from employee where id=" + eb.getId() + "";
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

    public String adminPassword(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String getPass = "update admin set password='" + eb.getUname() + "' where id=" + eb.getId() + " and password='" + eb.getPass() + "'";
            int i = stmt.executeUpdate(getPass);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in adminPassword : " + e);
        }
        return status;
    }

    public String getEmployeeRegister(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String getRegister = "insert into employee(status,empname,username,password,dob,gender,phone,emerperson,emerphone,address,email,state,city) values('1','" + eb.getSname() + "','" + eb.getUname() + "','" + eb.getUname() + "','" + eb.getDob() + "','" + eb.getGender() + "','" + eb.getPhone() + "','" + eb.getEcp() + "','" + eb.getEphone() + "','" + eb.getAddr() + "','" + eb.getEmail() + "','" + eb.getState() + "','" + eb.getCity() + "')";
            int i = stmt.executeUpdate(getRegister);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in getEmployeeRegister : " + e);
        }
        return status;
    }

    public String getTeacherRegister(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String getRegister = "insert into teacher(principalid,status,empname,username,password,dob,gender,phone,emerperson,emerphone,address,email,state,city,desg,qual) values('" + eb.getId() + "','1','" + eb.getSname() + "','" + eb.getUname() + "','" + eb.getUname() + "','" + eb.getDob() + "','" + eb.getGender() + "','" + eb.getPhone() + "','" + eb.getEcp() + "','" + eb.getEphone() + "','" + eb.getAddr() + "','" + eb.getEmail() + "','" + eb.getState() + "','" + eb.getCity() + "','" + eb.getDesg() + "','" + eb.getQual() + "')";
            System.out.println();
            int i = stmt.executeUpdate(getRegister);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in getTeacherRegister : " + e);
        }
        return status;
    }

    public String getSchoolPassword(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String getPass = "update school set password='" + eb.getUname() + "' where id=" + eb.getId() + " and password='" + eb.getPass() + "'";
            int i = stmt.executeUpdate(getPass);
            if (i > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in getSchoolPassword : " + e);
        }
        return status;
    }

    public ArrayList getFullTeacher(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from teacher where id=" + eb.getId() + "";
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
                i.setDesg(rs.getString(10));
                i.setQual(rs.getString(11));
                i.setEcp(rs.getString(12));
                i.setEphone(rs.getString(13));
                i.setAddr(rs.getString(14));
                i.setEmail(rs.getString(15));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getFullEmp :" + e);
        }
        return mlist;
    }

    public ArrayList getSchoolGlance(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from school where id=" + eb.getId() + "";
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setSname(rs.getString(2));
                i.setUname(rs.getString(10));
                i.setQual(rs.getString(11));
                i.setAddr(rs.getString(12));
                i.setBoard(rs.getString(5));
                i.setMedium(rs.getString(6));
                i.setUsertype(rs.getString(13));
                i.setCity(rs.getString(8));
                i.setState(rs.getString(7));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getFullEmp :" + e);
        }
        return mlist;
    }

    public String glanceUpdate(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "update school set glance='" + eb.getUname() + "' where id=" + eb.getId();
            System.out.println(q);
            int a = stmt.executeUpdate(q);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in glanceUpdate : " + e);
        }
        return status;
    }

    public String eventsUpdate(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "update school set events='" + eb.getUname() + "' where id=" + eb.getId();
            System.out.println(q);
            int a = stmt.executeUpdate(q);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in eventsUpdate : " + e);
        }
        return status;
    }

    public String addNewClass(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String h = "select * from schoolclass where classname='" + eb.getUname() + "' and principalid='" + eb.getId() + "'";
            rs = stmt.executeQuery(h);
            if (rs.next()) {
                status = "present";
            } else {
                q = "insert into schoolclass(classname,principalid,syllabus) values('" + eb.getUname() + "','" + eb.getId() + "','" + eb.getAddr() + "')";
                System.out.println(q);
                int a = stmt.executeUpdate(q);
                if (a > 0) {
                    status = "done";
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in addNewClass : " + e);
        }
        return status;
    }

    public ArrayList getMyClassList(EazyBeans eb) {
        ArrayList mlist = new ArrayList();
        try {
            con = myConnection();
            stmt = con.createStatement();
            q = "Select * from schoolclass where principalid=" + eb.getId();
            System.out.println(q);
            rs = stmt.executeQuery(q);
            while (rs.next()) {
                EazyBeans i = new EazyBeans();
                i.setUname(rs.getString(2));
                i.setUtype(rs.getString(1));
                mlist.add(i);
            }
        } catch (Exception e) {
            System.out.println("Error getFullEmp :" + e);
        }
        return mlist;
    }

    public String addNewSection(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String h = "select * from section where classname='" + eb.getUname() + "' and principalid='" + eb.getId() + "' and section='" + eb.getSname() + "'";
            System.out.println(h);
            ResultSet rd = stmt.executeQuery(h);
            if (rd.next()) {
                status = "present";
            } else {
                q = "insert into section (classname,section,principalid)values('" + eb.getUname() + "','" + eb.getSname() + "','" + eb.getId() + "')";
                int a = stmt.executeUpdate(q);
                if (a > 0) {
                    status = "done";
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in addNewSection : " + e);
        }
        return status;
    }

    public String addNewSubject(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String h = "select * from subject where classname='" + eb.getUname() + "' and principalid='" + eb.getId() + "' and  subject='" + eb.getSname() + "'";
            System.out.println(h);
            ResultSet rd = stmt.executeQuery(h);
            if (rd.next()) {
                status = "present";
            } else {
                q = "insert into subject (classname,subject,principalid)values('" + eb.getUname() + "','" + eb.getSname() + "','" + eb.getId() + "')";
                int a = stmt.executeUpdate(q);
                if (a > 0) {
                    status = "done";
                }
            }
        } catch (Exception e) {
            System.out.println("Exception in addNewSubject : " + e);
        }
        return status;
    }

    public String assignTeacherWork(EazyBeans eb) {
        String status = "failed";
        try {
            con = myConnection();
            stmt = con.createStatement();
            String p = "select * from teacher where principalid='" + eb.getId() + "' and id=" + eb.getEcp();
            ResultSet rb = stmt.executeQuery(p);
            if (rb.next()) {
                eb.setEphone(rb.getString(2));
            }
            q = "insert into assign (classname,subject,section,teacherid,teachername,principalid) values('" + eb.getUname() + "','" + eb.getSname() + "','" + eb.getBoard() + "','" + eb.getEcp() + "','" + eb.getEphone() + "','" + eb.getId() + "')";
            int a = stmt.executeUpdate(q);
            if (a > 0) {
                status = "done";
            }
        } catch (Exception e) {
            System.out.println("Exception in assignTeacherWork : " + e);
        }
        return status;
    }
}