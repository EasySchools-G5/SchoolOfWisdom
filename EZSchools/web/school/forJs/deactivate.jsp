<%@page import="myBeans.EazyBeans"%>
<%
    String status = "";
    EazyBeans rb = new EazyBeans();
    String type = request.getParameter("ty");
    if (type.equals("teac")) {
        rb.setId(request.getParameter("tid"));
        status = rb.deactivateTeacher(rb);
        response.sendRedirect("../index.jsp?page=elist&do=" + status);
    }
%>