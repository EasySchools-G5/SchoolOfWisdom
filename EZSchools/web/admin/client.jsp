<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<div class="main-bg" style="width: 100%;">
    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="javascript:;" title="">Clients Section /</a>
        <a href="#" class="current-page" title="">Add Client </a>
    </div>
    <div class="heading-buttons-sec" >
    </div>
    <div class="body-sec">
        <div class="wizard-form-h">
            <div class="swMain" id="wizard">
                <div class="stepContainer" style="height: 296px;">
                    <%
                        String msg = request.getParameter("do");
                        System.out.println(msg);
                        if (msg != null) {
                            if (msg.equals("failed")) {
                    %>
                    <div id="msg" class="alert alert-danger">
                        <strong>Failed to Register School</strong>
                        <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                    </div>
                    <%                       } else if (msg.equals("done")) {

                    %>
                    <div id="msg" class="alert alert-success">
                        <strong>School Successfully Register</strong>
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
                    <div id="step-1" class="content" style="display: block;">	
                        <h2 class="StepTitle">Register School</h2>
                        <form class="form-control" onsubmit="return checkForm();" action="../process/registerProcess.jsp" method="post">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">School Name</label>
                                    <input type="text" name="sname" id="sname" placeholder="School Name" class="input-style">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Board</label>
                                    <input type="text" placeholder="Board Name" class="input-style" name="board" id="board">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Email</label>
                                    <input type="text" placeholder="Email" name="email" id="email">
                                    <input type="hidden" name="typeuser" id="typeuser" value="sch"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Medium</label>
                                    <input type="text" placeholder="Medium" name="med" id="med">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">State</label>
                                    <select name="state" class="form-control" id="state">
                                        <option value="">Select State</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Haryana">Haryana</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">City</label>
                                    <select name="city" class="form-control" id="city">
                                        <option value="">Select City</option>
                                        <option value="Hoshiarpur">Hoshiarpur</option>
                                        <option value="Ambala">Ambala</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="inline-form">
                                    <input type="submit" name="sub" value="Register" id="sub" class="btns  green  sml-btn">
                                </div>
                            </div>    
                        </form>
                    </div>
                </div>

            </div>											
        </div>
    </div>
</div>