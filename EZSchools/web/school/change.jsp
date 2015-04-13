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
        <a href="javascript:;" title="">Change Password</a>
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
                        <strong>Failed to Update Password</strong>
                        <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                    </div>
                    <%                       } else if (msg.equals("done")) {

                    %>
                    <div id="msg" class="alert alert-success">
                        <strong>Password Successfully Updated</strong>
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
                            <strong>Password must be more than 6 characters</strong>
                            <a href='javascript:;' onclick="removeMsg2()" style="float:right;" id="ex">x</a>
                        </div>
                    </div>
                    <div id="dmsg3">
                        <div id="dmsg" class="alert alert-danger">
                            <strong>Password does not match</strong>
                            <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                        </div>
                    </div>
                    <div id="step-1" class="content" style="display: block;">	
                        <h2 class="StepTitle">Change Password</h2>
                        <form class="form-control" onsubmit="return checkPassForm();" action="../process/changeProcess.jsp" method="post">
                            <input type="hidden" name="typeuser" id="typeuser" value="school">
                            <div class="col-md-12">
                                <div class="inline-form" >
                                    <label class="c-label">Old Password</label>
                                    <input type="password" name="opass" id="opass" placeholder="Old Password" class="input-style">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="inline-form">
                                    <label class="c-label">New Password</label>
                                    <input type="password" onblur="check_new(this.value);" placeholder="New Password" class="input-style" name="npass" id="npass">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="inline-form">
                                    <label class="c-label">Confirm Password</label>
                                    <input type="password" placeholder="Confirm Password" onblur="check_confirmPassword(this.value);" name="cpass" id="cpass">
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="inline-form">
                                    <input type="submit" name="sub" value="Change Password" id="sub" class="btns  green  sml-btn">
                                </div>
                            </div>    
                        </form>
                    </div>
                </div>

            </div>											
        </div>
    </div>
</div>