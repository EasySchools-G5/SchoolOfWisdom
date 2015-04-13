<%@page import="myBeans.EazyBeans"%>
<%
    EazyBeans o=new EazyBeans();
    
    String id=(String) session.getAttribute("session_id");
    o.setUname(request.getParameter("schlDesc"));
    o.setId(id);
    String type=request.getParameter("myEdit");
    String status="";
    if(type.equals("glance")){
        status=o.updateGlance(o);
    }else if(type.equals("events")){
            status=o.updateEvents(o);
    }
    response.sendRedirect("../school/index.jsp?do=" + status);
%>