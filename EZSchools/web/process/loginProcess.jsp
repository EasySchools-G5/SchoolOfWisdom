<%@page import="java.net.Inet4Address"%>
<%@page import="myBeans.EazyBeans"%>
<%
    try {
        System.out.println(Inet4Address.getLocalHost().getHostAddress());
        EazyBeans rb = new EazyBeans();
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String utype = request.getParameter("utype");
        rb.setUtype(utype);
        rb.setUname(uname);
        rb.setPass(pass);
        String status = rb.loginStatus(rb);
        String loginId = status;
        String loginData[] = loginId.split("/");
        if (loginData[0].equals("failed")) {
            response.sendRedirect("../login.jsp?do=error");
        } else if (loginData[0].equals("done")) {
            if (utype.equals("admin")) {
                session.setAttribute("session_user", loginData[2]);
                session.setAttribute("session_id", loginData[1]);
                session.setAttribute("session_type", utype);
                response.sendRedirect("../admin/index.jsp");
            } else if (utype.equals("school")) {
                if (loginData[4].equals("0")) {
                    response.sendRedirect("../login.jsp?do=deactivate");
                } else {
                    session.setAttribute("session_user", loginData[2]);
                    session.setAttribute("session_school", loginData[3]);
                    session.setAttribute("session_id", loginData[1]);
                    session.setAttribute("session_type", utype);
                    response.sendRedirect("../school/index.jsp");
                }
            } else if (utype.equals("employee")) {
                if (loginData[4].equals("0")) {
                    response.sendRedirect("../login.jsp?do=deactivate");
                } else {
                    session.setAttribute("session_user", loginData[1]);
                    session.setAttribute("session_id", loginData[2]);
                    session.setAttribute("session_type", utype);
                    session.setAttribute("session_name", loginData[3]);
                    response.sendRedirect("../employee/index.jsp");
                }
            } else if (utype.equals("guardian")) {
                if (loginData[4].equals("0")) {
                    response.sendRedirect("../login.jsp?do=deactivate");
                } else {
                    session.setAttribute("session_user", loginData[1]);
                    session.setAttribute("session_id", loginData[2]);
                    session.setAttribute("session_type", utype);
                    session.setAttribute("session_name", loginData[3]);
                    response.sendRedirect("../guardian/index.jsp");
                }
            } else if (utype.equals("teacher")) {
                if (loginData[4].equals("0")) {
                    response.sendRedirect("../login.jsp?do=deactivate");
                } else {
                    session.setAttribute("session_user", loginData[1]);
                    session.setAttribute("session_id", loginData[2]);
                    session.setAttribute("session_type", utype);
                    session.setAttribute("session_name", loginData[3]);
                    response.sendRedirect("../teacher/index.jsp");
                }
            }
        }
    } catch (Exception e) {
        System.out.println("Exception is : " + e);
    }
%>