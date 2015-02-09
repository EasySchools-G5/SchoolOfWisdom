<%@page import="myBeans.EazyBeans"%>
<%

    EazyBeans eb = new EazyBeans();
    String g=(String)session.getAttribute("session_id");
    eb.setPass(request.getParameter("opass"));
    eb.setUname(request.getParameter("npass"));
    eb.setId(g);
    String status = eb.changeAdminPassword(eb);
    response.sendRedirect("../admin/index.jsp?page=change&do="+status);

%>