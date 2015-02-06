<%
    String id = request.getParameter("tid");
    session.setAttribute("session_idlist", id);
    response.sendRedirect("../index.jsp?page=seeEmployee");
%>