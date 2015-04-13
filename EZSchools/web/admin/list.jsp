<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myBeans.EazyBeans"%>
<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<script>
    function deleteItem(eid){
        var status = confirm("Are you sure you..??");
        if(status==true){
            window.location="forJs/remove.jsp?tid="+eid+"&ty=school";
        }
    }
    function Deactivate(eid){
        var status = confirm("Are you sure you..??");
        if(status==true){
            window.location="forJs/deactivate.jsp?tid="+eid+"&ty=school";
        }
    }
    function Activate(eid){
        var status = confirm("Are you sure you..??");
        if(status==true){
            window.location="forJs/activate.jsp?tid="+eid+"&ty=school";
        }
    }
</script>
<div class="main-bg" >
    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="javascript:;" title="">Clients Section /</a>
        <a href="#" class="current-page" title="">List Of Clients </a>
    </div>
    <div class="heading-buttons-sec" >
    </div>
    <div class="body-sec">

        <div class="col-md-12">
            <div class="widget-body">
                <%
                    String msg = request.getParameter("do");
                    if (msg != null) {
                        if (msg.equals("failed")) {
                %>
                <div id="msg" class="alert alert-danger">
                    <strong>Error while performing operation</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                </div>

                <%                       } else if (msg.equals("done")) {

                %>
                <div id="msg" class="alert alert-success">
                    <strong>Operation Successfully Performed</strong>
                    <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                </div>
                <%}
                    }
                %>
                <div class="widget-heading purple">
                    <i class="icon-table pull-left"></i><h3 class="pull-left">Client List</h3>
                </div>
                <div class="widget-sec">
                    <div class="streaming-table">
                        <span class="label label-info" id="found" style="display: none;"></span>
                        <table class="table table-striped table-bordered" id="stream_table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>School Name</th>
                                    <th>Email</th>
                                    <th>State</th>
                                    <th>City</th>
                                    <th>Status</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                    <th>Change Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    EazyBeans sb = new EazyBeans();
                                    ArrayList alist = sb.getClientList(sb);
                                    int i = 1;
                                    if (alist.size() > 0) {
                                        Iterator itr = alist.iterator();
                                        while (itr.hasNext()) {
                                            sb = (EazyBeans) itr.next();
                                %>
                            
                                <tr>
                                    <td><%=i%></td>
                                    <td><%=sb.getSname()%></td>
                                    <td><a class="edit" style="text-decoration: none;" href="forJs/seeclient.jsp?tid=<%=sb.getId()%>"><%=sb.getUname()%></a></td>
                                    <td><%=sb.getState()%></td>
                                    <td><%=sb.getCity()%></td>
                                    <%if (sb.getIdStatus().equals("1")) {
                                    %>
                                    <td style="color: #71C633;"><b>Activate</b></td>
                                    <%                                    } else {
                                    %>
                                    <td style="color: #CE0303;"><b>Deactivate</b></td>
                                    <%}%>
                                    <td><a href="index.jsp?page=editItem.jsp&tid=<%=sb.getId()%>"><i class="icon-edit"></i></a></td>
                                    <td><a href="javascript:;" onclick="deleteItem(<%=sb.getId()%>);"><i class="icon-trash"></i></a></td>
                                    <%if (sb.getIdStatus().equals("1")) {
                                    %>
                                    <td>
                                        <a style="text-decoration: none;" href="javascript:;" onclick="Deactivate(<%=sb.getId()%>);"><b><i class="icon-remove"></i></b></a>
                                    </td>

                                    <%                                    } else {
                                    %>
                                    <td><a style="text-decoration: none;" href="javascript:;" onclick="Activate(<%=sb.getId()%>);"><b><i class="icon-ok"></i></b>
                                        </a></td>

                                    <%}%>

                                </tr>
                                <%
                                            i++;
                                        }
                                    }%>
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>	
    </div>

</div>