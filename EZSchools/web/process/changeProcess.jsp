<%@page import="myBeans.EazyBeans"%>
<%

    EazyBeans eb = new EazyBeans();
    eb.setUsertype(request.getParameter("typeuser"));
    if (request.getParameter("typeuser").equals("admin")) {
        String g = (String) session.getAttribute("session_id");
        eb.setPass(request.getParameter("opass"));
        eb.setUname(request.getParameter("npass"));
        eb.setId(g);
        String status = eb.changePassword(eb);
        response.sendRedirect("../admin/index.jsp?page=change&do=" + status);

    } else if (request.getParameter("typeuser").equals("school")) {
        String g = (String) session.getAttribute("session_id");
        eb.setPass(request.getParameter("opass"));
        eb.setUname(request.getParameter("npass"));
        eb.setId(g);
        String status = eb.changePassword(eb);
        response.sendRedirect("../school/index.jsp?page=change&do=" + status);
    }

%>