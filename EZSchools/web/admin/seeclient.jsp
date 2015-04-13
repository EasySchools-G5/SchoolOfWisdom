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
<%
    String id = (String) session.getAttribute("session_idlist");
    if (id != null) {
        EazyBeans sb = new EazyBeans();
        sb.setId(id);
        ArrayList alist = sb.SchoolgetFullinfo(sb);
        if (alist.size() > 0) {
            Iterator itr = alist.iterator();
            while (itr.hasNext()) {
                sb = (EazyBeans) itr.next();

%>
<div class="main-bg" style="width: 100%;">
    <div class="top-stats"></div>
    <div class="breadcrumbs-notify">
        <a href="javascript:;" title="">Clients Section /</a>
        <a href="#" class="current-page" title="">Client Info</a>
    </div>
    <div class="heading-buttons-sec" >
    </div>
    <div class="body-sec">
        
        <div class="wizard-form-h">
            <div class="swMain" id="wizard">
                <div class="stepContainer" style="height: 296px;">
                    <div id="step-1" class="content" style="display: block;">	
                        <h2 class="StepTitle">Client Info</h2>
                        <form class="form-control" action="" method="get">
                            <div class="col-md-6">
                                <div class="inline-form" >
                                    <label class="c-label">School Name</label>
                                    <input type="text" value="<%=sb.getSname()%>" disabled="true"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Board</label>
                                    <input type="text" disabled="true" value="<%=sb.getBoard()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Email</label>
                                    <input type="text" disabled="true" value="<%=sb.getUname()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">Medium</label>
                                    <input type="text" disabled="true" value="<%=sb.getMedium()%>" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">State</label>
                                    <input type="text" disabled="true" value="<%=sb.getState()%>"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inline-form">
                                    <label class="c-label">City</label>
                                    <input type="text" disabled="true" value="<%=sb.getCity()%>"/>
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