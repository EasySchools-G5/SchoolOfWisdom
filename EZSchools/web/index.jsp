<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("session_user", "admin");
            session.setAttribute("session_id", "1");
            session.setAttribute("session_type", "admin");

        %>
        <h1>Responsive design of all pages : </h1><a href="task/index.jsp">Click here</a>
        <br/>
        <h1>Responsive design Change password Form  : </h1><a href="task/admin/index.jsp?page=change">Click here</a>
        <br/>
        <h1>Employee List  : </h1><a href="task/admin/index.jsp?page=elist">Click here</a>

    </body>
</html>
