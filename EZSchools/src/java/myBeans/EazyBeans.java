package myBeans;

import Data_Access.MyProjectLayer;
import java.util.ArrayList;

public class EazyBeans {

    private String qual, desg, addr, idStatus, email, uname, gender, pass, utype, sname, board, medium, state, city, id, usertype, dob, phone, ecp, ephone;
    MyProjectLayer mp = new MyProjectLayer();

    public String getQual() {
        return qual;
    }

    public void setQual(String qual) {
        this.qual = qual;
    }

    public String getDesg() {
        return desg;
    }

    public void setDesg(String desg) {
        this.desg = desg;
    }

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

    public String loginStatus(EazyBeans eb) {
        String status = mp.LoginEmp(eb);
        return status;
    }

    public String getRegister(EazyBeans eb) {
        String status = "";
        String utype = eb.getUsertype();
        if (utype.equals("emp")) {
            status = mp.getEmployeeRegister(eb);
        } else if (utype.equals("teacher")) {
            status = mp.getTeacherRegister(eb);
        } else if (utype.equals("sch")) {
            status = mp.getSchoolRegister(eb);
        }
        return status;
    }

    public ArrayList SchoolgetFullinfo(EazyBeans eb) {
        ArrayList ilist = mp.getFullClient(eb);
        return ilist;
    }

    public ArrayList EmployeegetFullinfo(EazyBeans eb) {
        ArrayList ilist = mp.getFullEmp(eb);
        return ilist;
    }

    public ArrayList teacherGetFullInfo(EazyBeans eb) {
        ArrayList ilist = mp.getFullTeacher(eb);
        return ilist;
    }

    public ArrayList getClientList(EazyBeans eb) {
        ArrayList ilist = mp.getListClient(eb);
        return ilist;
    }

    public ArrayList getEmpList(EazyBeans eb) {
        ArrayList ilist = mp.getListEmp(eb);
        return ilist;
    }

    public ArrayList getTeacherList(EazyBeans eb) {
        ArrayList ilist = mp.getListTeacher(eb);
        return ilist;
    }

    public String deleteSchool(EazyBeans eb) {
        String status = mp.deleteSchool(eb);
        return status;
    }

    public String deleteTeacher(EazyBeans eb) {
        String status = mp.deleteTeacher(eb);
        return status;
    }

    public String deleteEmployee(EazyBeans eb) {
        String status = mp.deleteEmployee(eb);
        return status;
    }

    public String deactivateSchool(EazyBeans eb) {
        String status = mp.deactivateSchool(eb);
        return status;
    }

    public String activateSchool(EazyBeans eb) {
        String status = mp.activateSchool(eb);
        return status;
    }

    public String deactivateTeacher(EazyBeans eb) {
        String status = mp.deactivateTeacher(eb);
        return status;
    }

    public String activateTeacher(EazyBeans eb) {
        String status = mp.activateTeacher(eb);
        return status;
    }

    public String changePassword(EazyBeans eb) {
        String status = "";
        String utype = eb.getUsertype();
        if (utype.equals("admin")) {
            status = mp.adminPassword(eb);
        } else if (utype.equals("school")) {
            status = mp.getSchoolPassword(eb);
        }

        return status;
    }

    public ArrayList getSchoolInfo(EazyBeans eb) {
        ArrayList ilist = mp.getSchoolGlance(eb);
        return ilist;
    }

    public ArrayList getClassList(EazyBeans eb) {
        ArrayList elist = mp.getMyClassList(eb);
        return elist;
    }

    public String updateGlance(EazyBeans eb) {
        String status = mp.glanceUpdate(eb);
        return status;
    }

    public String updateEvents(EazyBeans eb) {
        String status = mp.eventsUpdate(eb);
        return status;
    }

    public String insertClass(EazyBeans eb) {
        String status = mp.addNewClass(eb);
        return status;
    }
    public String insertSection(EazyBeans eb) {
        String status = mp.addNewSection(eb);
        return status;
    }
    public String insertSubject(EazyBeans eb) {
        String status = mp.addNewSubject(eb);
        return status;
    }
    public String assignWork(EazyBeans eb){
        String status=mp.assignTeacherWork(eb);
        return status; 
    }
}