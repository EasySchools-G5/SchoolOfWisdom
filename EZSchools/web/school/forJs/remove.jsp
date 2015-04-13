<%@page import="myBeans.EazyBeans"%>
<%
    String status="";
    EazyBeans rb = new EazyBeans();
    String type = request.getParameter("ty");
    if (type.equals("teac")) {
        rb.setId(request.getParameter("tid"));
        status = rb.deleteTeacher(rb);
        response.sendRedirect("../index.jsp?page=elist&do=" + status);
    }
%>