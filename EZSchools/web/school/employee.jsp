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
        <a href="javascript:;" title="">Employee Section /</a>
        <a href="#" class="current-page" title="">Add Employee</a>
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
                        <strong>Failed to Register Employee</strong>
                        <a href='javascript:;' onclick="removeMsg()" style="float:right; text-decoration: none;" id="ex">x</a>
                    </div>
                    <%                       } else if (msg.equals("done")) {

                    %>
                    <div id="msg" class="alert alert-success">
                        <strong>Employee Successfully Register</strong>
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
                    <div id="dmsg3" class="alert alert-danger">


                    </div>

                    <div id="step-1" class="content" style="display: block;">	
                        <h2 class="StepTitle">Register Employee</h2>
                        <form class="form-control" onsubmit="return TeachercheckForm();" action="../process/registerProcess.jsp" method="post">
                            <input type="hidden" name="typeuser" id="typeuser" value="teacher">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Empolyee Name</label>
                                    <input type="text" name="sname" id="sname" placeholder="School Name" class="input-style"/>
                                    <input type="hidden" name="typeuser" id="typeuser" value="emp"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Email</label>
                                    <input type="text" placeholder="Email" name="email" id="email" class="input-style"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Gender</label>
                                    <select name="gender" class="form-control" id="gender">
                                        <option value="">Select Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                
                                <div class="inline-form">
                                    <label class="c-label">Date Of Birth</label>
                                    <input type="text" id="dob" name="dob" class="input-style" placeholder="Date Of Birth"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">State</label>
                                    <select name="state" class="form-control" id="state" >
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
                                        <option value="Punjab">Punjab</option>
                                        <option value="Haryana">Haryana</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Highest Qualification</label>
                                    <input type="text" id="qual" name="qual" class="input-style" placeholder="Highest Qualification"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Designation</label>
                                    <input type="text"  id="designation" name="designation" class="input-style" placeholder="Designation"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Phone Number</label>
                                    <input type="text" onblur="setTeacherUsername();" id="phone" name="phone" class="input-style" placeholder="Phone number"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Username</label>
                                    <input type="text" id="uname" name="uname" class="input-style" placeholder="Username" readonly="true">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Emergency Contact Person</label>
                                    <input type="text" id="ecp" name="ecp" class="input-style" placeholder="Person Name"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Emergency Phone Number</label>
                                    <input type="text" id="ephone" name="ephone" class="input-style" placeholder="Emergency Phone number"/>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="inline-form">
                                    <label class="c-label">Address</label>
                                    <textarea id="addr" style="resize: none;" name="addr" class="input-style" ></textarea>
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