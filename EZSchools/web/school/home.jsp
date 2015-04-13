<%@page import="java.util.*"%>
<%@page import="myBeans.EazyBeans"%>
<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("school"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
    EazyBeans sb = new EazyBeans();
    sb.setId((String) session.getAttribute("session_id"));
    ArrayList alist = sb.getSchoolInfo(sb);
    if (alist.size() > 0) {
        Iterator itr = alist.iterator();
        while (itr.hasNext()) {
            sb = (EazyBeans) itr.next();
%>

<div class="main-bg" style="width: 100%;">

    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="#" title="">Home</a>
    </div>
    <div class="heading-buttons-sec">
    </div>
    <div class="body-sec">
        <%
            String msg = request.getParameter("do");
            if (msg != null) {
                if (msg.equals("failed")) {
        %>
        <div id="msg" class="alert alert-danger">
            <strong>Operation Failed</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
        </div>
        <%                       } else if (msg.equals("done")) {

        %>
        <div id="msg" class="alert alert-success">
            <strong>Data Successfully Updated</strong>
            <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
        </div>
        <%}
            }
        %>
        <div id="dmsg1">
            <div id="dmsg" class="alert alert-danger">
                <strong>My Glance can not be Empty</strong>
                <a href='javascript:;' onclick="removeMsg1()" style="float:right;" id="ex">x</a>
            </div>
        </div>
        <div class="wizard-form-h">
            <div class="swMain" id="wizard">
                <div class="stepContainer" style="height: 100%;">
                    <div class="col-md-6">
                        <div id="step-1" class="content" style="height: 100%;display: block;">
                            <h2 class="StepTitle">At Glance</h2>
                            <p id="pDesc" style="margin-left: 5px; margin-top: 59px; display:block">
                                <%=sb.getUname()%>
                            </p>
                            <form onsubmit="return checkMyGFlance();" method="post" action="../process/editDesc.jsp" id="formID" style="margin-left: 5px; margin-top: 59px; display: none;">
                                <input type="text" name="myEdit" value="glance"/>
                                <textarea name="schlDesc" id="schlDesc" style="width:100%;resize:none;height:200px;margin-bottom:15px"><%=sb.getUname()%></textarea>
                                <input type="submit" class="btn btn-large btn-success" style="width:20%;float:right;" name="submitDesc" value="Save Description"/>
                            </form>
                            <button id="btnDesc" class="btn btn-small btn-info" style="margin-top: 196px;width:20%;float:right;">Edit Description</button>
                        </div>                        
                    </div>
                    <div class="col-md-6">
                        <div id="step-1" class="content" style="height: 394px;display: block;">
                            <h2 class="StepTitle">Image</h2>
                            <img src=<%=sb.getAddr()%> id="imageDis" style="height: 300px; width: 300px;" />
                            <form action="" class="form uniformForm" id="FormImage" method="post" enctype="multipart/form-data" style="display: none;"> 
                                <div class="field-group">
                                    <div class="field">
                                        <div class="uploader" id="uniform-file_upload">
                                            <input type="file" id="file_upload" name="file_upload" style="opacity: 0;">
                                        </div>
                                    </div> 
                                </div>
                                <div class="actions"> 
                                    <button class="btn btn-primary" type="submit">Upload File</button> 
                                    <button onclick="showImage()" class="btn btn-error">Cancel</button>
                                </div>
                            </form>
                            <button id="imageForm" class="btn btn-small btn-primary" style="float:right;margin-top: 20px;">Change Image</button>
                        </div>    
                    </div>
                    <div class="col-md-6">
                        <div id="step-1" class="content" style="height: 100%;display: block;">
                            <h2 class="StepTitle">Events & Announcements</h2>
                            <p id="pEvents" style="margin-left: 5px; margin-top: 59px; display:block">
                                <%=sb.getQual()%>
                            </p>
                            <form method="post" action="../process/editDesc.jsp" id="formID1" style=" margin-left: 5px; margin-top: 59px; display: none;">
                                <input type="text" name="myEdit" value="events"/>
                                <textarea onsubmit="return checkEvents();" name="schlDesc" id="schlDesc" style="width:100%;resize:none;height:200px;margin-bottom:15px"><%=sb.getQual()%></textarea>
                                <input type="submit" class="btn btn-large btn-success" style="float:right;" name="submitDesc" value="Save Events"/>
                            </form>
                            <button id="btnEvents" class="btn btn-small btn-info" style="margin-top: 196px;float:right;">Add Events & Announcements</button>
                        </div>                        
                    </div>
                    <div class="col-md-6">
                        <div class="widget-heading purple">
                            <i class="icon-table pull-left"></i><h3 class="pull-left">About School</h3>
                        </div>
                        <div class="widget-sec">
                            <div class="streaming-table">
                                <span class="label label-info" id="found"></span>
                                <table style="display: block; width:auto;" class="table table-striped table-bordered" id="stream_table">
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Name</td>
                                            <td><%=sb.getSname()%></td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Affiliated To</td>
                                            <td><%=sb.getBoard()%></td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Medium of Education</td>
                                            <td><%=sb.getMedium()%></td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>For</td>
                                            <td><%=sb.getUsertype()%></td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Location</td>
                                            <td><%=sb.getCity()%>,<%=sb.getState()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>											
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#btnDesc').click(function(){
        $('#pDesc').css("display","none");
        $('#formID').css("display","block");
        $('#btnDesc').css("display","none");
    });
    $('#btnEvents').click(function(){
        $('#pEvents').css("display","none");
        $('#formID1').css("display","block");
        $('#btnEvents').css("display","none");
    });
    $('#imageForm').click(function(){
        $('#imageForm').css("display","none");
        $('#FormImage').css("display","block");
        $('#imageDis').css("display","none");
        
    });
</script>
<%
        }
    }
%>