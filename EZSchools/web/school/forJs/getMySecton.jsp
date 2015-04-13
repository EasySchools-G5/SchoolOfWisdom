<%@page import="java.sql.*"%>
<%
    String id = (String) session.getAttribute("session_id");
    String classname = request.getParameter("cla");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///eazy", "root", "");
        Statement st = con.createStatement();
        String q = "select * from section where classname='" + classname + "' and principalid='" + id + "'";
        ResultSet rs = st.executeQuery(q);
%>
<div class="col-md-6">
    <div class="inline-form" >
        <label class="c-label">Section</label>
        <select name="sect" id="sect" class="form-control">
            <option value="">Select Section</option>
            <%
                while (rs.next()) {
            %>
            <option value="<%=rs.getString(3)%>"><%=rs.getString(3)%></option>
            <%                    }
            %>
        </select>
    </div>
</div>
<div class="col-md-6">
    <div class="inline-form" >
        <label class="c-label">Subject</label>
        <select name="sub" class="form-control" id="sub">
            <option value="">Select Subject</option>
            <%
                String quer = "select * from subject where classname='" + classname + "' and principalid='" + id + "'";
                ResultSet rd = st.executeQuery(quer);
                while (rd.next()) {
            %>
            <option value="<%=rd.getString(3)%>"><%=rd.getString(3)%></option>
            <%
                }
            %>
        </select>
    </div>
</div>
<div class="col-md-6">
    <div class="inline-form" >
        <label class="c-label">Subject Teacher</label>
        <select name="teacher" class="form-control" id="teacher">
            <option value="">Select Teacher</option>
            <%
                String que = "select * from teacher where principalid='" + id + "'";
                ResultSet rb = st.executeQuery(que);
                while (rb.next()) {
            %>
            <option value="<%=rb.getString(1)%>"><%=rb.getString(2)%></option>
            <%
                }
            %>
        </select>
    </div>
</div>
<div class="col-md-2">
    <div class="inline-form">
        <input type="submit" name="sub" value="Assign Task" id="sub" class="btns green sml-btn">
    </div>
</div>
<%
    } catch (Exception e) {
        System.out.println("Exception in getMySection : " + e);
    }
%>