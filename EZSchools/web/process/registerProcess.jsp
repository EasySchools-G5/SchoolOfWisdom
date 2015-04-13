<%@page import="myBeans.EazyBeans"%>
<%
    EazyBeans eb = new EazyBeans();
    if (request.getParameter("typeuser").equals("emp")) {
        eb.setSname(request.getParameter("sname"));
        eb.setUsertype(request.getParameter("typeuser"));
        eb.setUname(request.getParameter("uname"));
        eb.setEmail(request.getParameter("email"));
        eb.setGender(request.getParameter("gender"));
        eb.setDob(request.getParameter("dob"));
        eb.setState(request.getParameter("state"));
        eb.setCity(request.getParameter("city"));
        eb.setPhone(request.getParameter("phone"));
        eb.setEcp(request.getParameter("ecp"));
        eb.setEphone(request.getParameter("ephone"));
        eb.setAddr(request.getParameter("addr"));
        String status = eb.getRegister(eb);
        response.sendRedirect("../admin/index.jsp?page=employee&do=" + status);
    }else if (request.getParameter("typeuser").equals("teacher")) {
        String id = (String) session.getAttribute("session_id");                                    
        eb.setSname(request.getParameter("sname"));
        eb.setId(id);
        eb.setUsertype(request.getParameter("typeuser"));
        eb.setUname(request.getParameter("uname"));
        eb.setEmail(request.getParameter("email"));
        eb.setGender(request.getParameter("gender"));
        eb.setDob(request.getParameter("dob"));
        eb.setState(request.getParameter("state"));
        eb.setCity(request.getParameter("city"));
        eb.setPhone(request.getParameter("phone"));
        eb.setEcp(request.getParameter("ecp"));
        eb.setEphone(request.getParameter("ephone"));
        eb.setAddr(request.getParameter("addr"));
        eb.setDesg(request.getParameter("designation"));
        eb.setQual(request.getParameter("qual"));
        String status = eb.getRegister(eb);
        response.sendRedirect("../school/index.jsp?page=employee&do=" + status);
    } else if (request.getParameter("typeuser").equals("sch")){
        eb.setUsertype(request.getParameter("typeuser"));
        eb.setSname(request.getParameter("sname"));
        eb.setUname(request.getParameter("email"));
        eb.setMedium(request.getParameter("med"));
        eb.setBoard(request.getParameter("board"));
        eb.setState(request.getParameter("state"));
        eb.setCity(request.getParameter("city"));
        String status = eb.getRegister(eb);
        response.sendRedirect("../admin/index.jsp?page=client&do=" + status);
    }
%>