<%@page import="myBeans.EazyBeans"%>
<%
    String status = "";
    EazyBeans rb = new EazyBeans();
    String type = request.getParameter("ty");
    if (type.equals("school")) {
        rb.setId(request.getParameter("tid"));
        status = rb.deactivateSchool(rb);
        response.sendRedirect("../index.jsp?page=list&do=" + status);
    }else if (type.equals("emp")) {
        rb.setId(request.getParameter("tid"));
        status = rb.deactivateSchool(rb);
        response.sendRedirect("../index.jsp?page=elist&do=" + status);
    }
%>