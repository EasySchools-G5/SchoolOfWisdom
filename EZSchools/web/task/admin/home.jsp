<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<div class="main-bg">

    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="#" title="">Home</a>
    </div>
    <div class="heading-buttons-sec">
        <h1>Dashboard</h1>
        <p>Good Morning Developers!!</p>
    </div>
    <div class="body-sec" style="width: 700px;">
        APN Inc.
    </div>
</div>