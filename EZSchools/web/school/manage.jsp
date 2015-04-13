<%@page import="java.util.*"%>
<%@page import="myBeans.EazyBeans"%>
<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("school"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<div class="main-bg" style="width: 100%;">
    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="javascript:;" title="">Manage Class</a>
        <a href="#" class="current-page" title=""> </a>
    </div>
    <div class="heading-buttons-sec" >
    </div>
    <div class="body-sec">
        <div class="wizard-form-h">
            <div class="swMain" id="wizard">
                <div class="stepContainer" style="height: 296px;">
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
                        <strong>Task Successfully Completed</strong>
                        <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                    </div>
                    <%} else if (msg.equals("present")) {
                    %>
                    <div id="msg" class="alert alert-warning">
                        <strong>Data Enetered is already present</strong>
                        <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                    </div>
                    <%}
                        }
                    %>
                    <div id="dmsg1">
                        <div id="dmsg" class="alert alert-danger">
                            <strong>All Fields are required</strong>
                            <a href='javascript:;' onclick="removeMsg1()" style="float:right;" id="ex">x</a>
                        </div>
                    </div>
                    <div id="dmsg2">
                        <div id="dmsg" class="alert alert-danger">
                            <strong>Please Enter numeric value</strong>
                            <a href='javascript:;' onclick="removeMsg2()" style="float:right;" id="ex">x</a>
                        </div>
                    </div>

                    <div id="step-1" class="content" style="display: block;">	
                        <h2 class="StepTitle">Add Class</h2>
                        <form class="form-control" onsubmit="return checkClass();" action="../process/classProcess.jsp" method="post">
                            <div class="col-md-12">
                                <div class="inline-form" >
                                    <label class="c-label">Class Name</label>
                                    <input type="hidden" name="type" value="addclass">
                                    <input onkeydown="return isNumber(event)" type="text" name="classname" id="classname" placeholder="Enter Class Name" class="input-style">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="inline-form" >
                                    <label class="c-label">Syllabus</label>
                                    <textarea name="syllabus" style="resize: none;" id="syllabus" placeholder="Enter Syllabus" class="input-style"></textarea>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="inline-form">
                                    <input type="submit" name="sub" value="Add Class" id="sub" class="btns green sml-btn">
                                </div>
                            </div>    
                        </form>
                    </div>

                    <div id="step-1" class="content" style="">	
                        <h2 class="StepTitle">Add Class Section</h2>
                        <form class="form-control" onsubmit="return checkSection();" action="../process/classProcess.jsp" method="post">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Class Name</label>
                                    <input type="hidden" name="type" value="addSection">
                                    <select name="classnam" id="classnam" class="form-control">
                                        <option value="">Select Class</option>
                                        <%
                                            EazyBeans sb = new EazyBeans();
                                            ArrayList alist;
                                            sb.setId((String) session.getAttribute("session_id"));
                                            alist = sb.getClassList(sb);
                                            if (alist.size() > 0) {
                                                Iterator itr = alist.iterator();
                                                while (itr.hasNext()) {
                                                    sb = (EazyBeans) itr.next();
                                        %>
                                        <option value="<%=sb.getUname()%>"><%=sb.getUname()%></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Section</label>
                                    <input type="text" name="section" id="section" placeholder="Enter Section" class="input-style">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="inline-form">
                                    <input type="submit" name="sub" value="Add Section" id="sub" class="btns green sml-btn">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="step-1" class="content" style="">	
                        <h2 class="StepTitle">Add Subject</h2>
                        <form class="form-control" onsubmit="return checkSubject();" action="../process/classProcess.jsp" method="post">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Class Name</label>
                                    <input type="hidden" name="type" value="addSubject">
                                    <select name="classna" id="classna" class="form-control" onselect="">
                                        <option value="">Select Class</option>
                                        <%
                                            sb.setId((String) session.getAttribute("session_id"));
                                            alist = sb.getClassList(sb);
                                            if (alist.size() > 0) {
                                                Iterator itr = alist.iterator();
                                                while (itr.hasNext()) {
                                                    sb = (EazyBeans) itr.next();
                                        %>
                                        <option value="<%=sb.getUname()%>"><%=sb.getUname()%></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Subject</label>
                                    <input type="text" name="subject" id="subject" placeholder="Enter Subject" class="input-style">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="inline-form">
                                    <input type="submit" name="sub" value="Add Subject" id="sub" class="btns green sml-btn">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="step-1" class="content" style="">	
                        <h2 class="StepTitle">Assign Work</h2>
                        <form class="form-control" onsubmit="return checkManage();" action="../process/classProcess.jsp" method="post">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Class Name</label>
                                    <input type="hidden" name="type" value="addTeacher">
                                    <select onblur="puneet()" name="classn" id="classn" class="form-control">
                                        <option value="">Select Class</option>
                                        <%
                                            sb.setId((String) session.getAttribute("session_id"));
                                            alist = sb.getClassList(sb);
                                            if (alist.size() > 0) {
                                                Iterator itr = alist.iterator();
                                                while (itr.hasNext()) {
                                                    sb = (EazyBeans) itr.next();
                                        %>
                                        <option value="<%=sb.getUname()%>"><%=sb.getUname()%></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>

                            <div id="me"></div>
                        </form>
                    </div>

                </div>
            </div>								
        </div>
    </div>
</div>