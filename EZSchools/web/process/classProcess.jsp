<%@page import="myBeans.EazyBeans"%>
<%
    EazyBeans o = new EazyBeans();
    String id = (String) session.getAttribute("session_id");
    String type = request.getParameter("type");
    o.setId(id);
    String status = "";
    if (type.equals("addclass")) {
        o.setUname(request.getParameter("classname"));
        o.setAddr(request.getParameter("syllabus"));
        status = o.insertClass(o);
    } else if (type.equals("addSection")) {
        o.setUname(request.getParameter("classnam"));
        o.setSname(request.getParameter("section"));
        status = o.insertSection(o);
    } else if (type.equals("addSubject")) {
        o.setUname(request.getParameter("classna"));
        o.setSname(request.getParameter("subject"));
        status = o.insertSubject(o);
    } else if (type.equals("addTeacher")) {
        o.setUname(request.getParameter("classn"));
        o.setBoard(request.getParameter("sect"));
        o.setEcp(request.getParameter("teacher"));
        o.setSname(request.getParameter("sub"));
        status=o.assignWork(o);
    }
    response.sendRedirect("../school/index.jsp?page=manage&do=" + status);
%>