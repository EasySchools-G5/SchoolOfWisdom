<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="myBeans.EazyBeans"%>
<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("school"))) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>
<%
    String id = (String) session.getAttribute("session_idlist");
    if (id != null) {
        EazyBeans sb = new EazyBeans();
        sb.setId(id);
        ArrayList alist = sb.teacherGetFullInfo(sb);
        if (alist.size() > 0) {
            Iterator itr = alist.iterator();
            while (itr.hasNext()) {
                sb = (EazyBeans) itr.next();

%>
<div class="main-bg" style="width: 100%;">
    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="javascript:;" title="">Employee Section /</a>
        <a href="#" class="current-page" title="">Employee Info </a>
    </div>
    <div class="heading-buttons-sec" >
    </div>
    <div class="body-sec">
        <div class="wizard-form-h">
            <div class="swMain" id="wizard">
                <div class="stepContainer" style="height: 296px;">
                    <div id="step-1" class="content" style="display: block;">	
                        <h2 class="StepTitle">Employee Info</h2>
                        <form class="form-control" method="post">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">Empolyee Name</label>
                                    <input type="text" readonly="true" value="<%=sb.getSname()%>" name="sname" id="sname" placeholder="School Name" class="input-style"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Email</label>
                                    <input type="text" readonly="true" value="<%=sb.getEmail()%>" placeholder="Email" name="email" id="email" class="input-style"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Gender</label>
                                    <input type="text" name="email" id="email" class="input-style" readonly="true" value="<%=sb.getGender()%>">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Date Of Birth</label>
                                    <input type="text" id="dob" name="dob" class="input-style" readonly="true" value="<%=sb.getDob()%>">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">State</label>
                                    <input type="text" name="state" id="state" readonly="true" value="<%=sb.getState()%>">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">City</label>
                                    <input type="text" name="city" id="city" readonly="true" value="<%=sb.getCity()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Highest Qualification</label>
                                    <input type="text" id="qual" name="qual" readonly="true" value="<%=sb.getQual()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Designation</label>
                                    <input type="text"  id="designation" name="designation" readonly="true" value="<%=sb.getDesg()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Phone Number</label>
                                    <input type="text" id="phone" name="phone" class="input-style" readonly="true" value="<%=sb.getPhone()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Username</label>
                                    <input type="text" id="uname" name="uname" class="input-style" readonly="true" value="<%=sb.getUname()%>">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Emergency Contact Person</label>
                                    <input type="text" id="ecp" name="ecp" class="input-style" placeholder="Person Name"readonly="true" value="<%=sb.getEcp()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Emergency Phone Number</label>
                                    <input type="text" id="ephone" name="ephone" class="input-style" placeholder="Emergency Phone number" readonly="true" value="<%=sb.getEphone()%>"/>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="inline-form">
                                    <label class="c-label">Address</label>
                                    <textarea id="addr" style="resize: none;" name="addr" class="input-style" readonly="true"><%=sb.getAddr()%></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>											
        </div>
    </div>
</div>
<%
            }
        }
    } else {
        response.sendRedirect("index.jsp");
    }
%>