package myBeans;

import Data_Access.MyProjectLayer;
import java.util.ArrayList;

public class EazyBeans {

    private String addr, idStatus, email, uname, gender, pass, utype, sname, board, medium, state, city, id, usertype, dob, phone, ecp, ephone;
    MyProjectLayer mp = new MyProjectLayer();

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getEcp() {
        return ecp;
    }

    public void setEcp(String ecp) {
        this.ecp = ecp;
    }

    public String getEphone() {
        return ephone;
    }

    public void setEphone(String ephone) {
        this.ephone = ephone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(String idStatus) {
        this.idStatus = idStatus;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getBoard() {
        return board;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        this.utype = utype;
    }

    public ArrayList EmployeegetFullinfo(EazyBeans eb) {
        ArrayList ilist = mp.getFullEmp(eb);
        return ilist;
    }

    public ArrayList getEmpList(EazyBeans eb) {
        ArrayList ilist = mp.getListEmp(eb);
        return ilist;
    }
    
    public String deleteEmployee(EazyBeans eb) {


        String status = mp.deleteEmployee(eb);
        return status;
    }
    
    public String changeAdminPassword(EazyBeans eb) {
        String status = mp.adminPassword(eb);
        return status;
    }
}