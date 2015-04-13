function EmpcheckForm(){
    var name=document.getElementById("sname").value;
    var email=document.getElementById("email").value;
    var phn=document.getElementById("phone").value;
    var gender=document.getElementById("gender").value;
    var dob=document.getElementById("dob").value;
    var padd=document.getElementById("addr").value;
    var city=document.getElementById("city").value;
    var state=document.getElementById("state").value;
    var ecp=document.getElementById("ecp").value;
    var ephone=document.getElementById("ephone").value;
    if(email==""||name==""||city==""||state=="" || padd==""||gender==""||dob=="" ||phn=="" ||ecp==""||ephone==""){
        document.getElementById("dmsg3").style.display="block";
        document.getElementById("dmsg3").innerHTML="<strong>All Fields are required</strong><a href='javascript:;' onclick='removeMsg()' style='float:right; text-decoration:none;' id='ex'>x</a>";
        window.scrollTo(0, 0);
        return false;
    }
    if(phn.length!=10 || ephone.length!=10){
        document.getElementById("dmsg3").style.display="block";
        document.getElementById("dmsg3").innerHTML="<strong>Enter valid phone number</strong><a href='javascript:;' onclick='removeMsg()' style='float:right; text-decoration:none;' id='ex'>x</a>";
        window.scrollTo(0, 0);
        return false;
    }
}

//=========================Set Username================================================
function setUsername(){
    var alphaNumerics = "abcdefghijklmnopqrstuvwxyz1234567890";
    var id = "";
    for (var i = 0; i < 5; i++) 
    {
        id+=alphaNumerics.charAt(Math.floor(Math.random() * alphaNumerics.length));
    }
    document.getElementById("uname").value="E"+id;
}
function setTeacherUsername(){
    var alphaNumerics = "abcdefghijklmnopqrstuvwxyz1234567890";
    var id = "";
    for (var i = 0; i < 5; i++) 
    {
        id+=alphaNumerics.charAt(Math.floor(Math.random() * alphaNumerics.length));
    }
    document.getElementById("uname").value="T"+id;
}
//=========================End Set Username================================================
//==========================Check MyGlance=================================================
function checkMyGFlance(){
    var glance=document.getElementById("schlDesc").value;
    if(glance==""){
        document.getElementById("dmsg1").style.display="block";
        return false;
    }
}
//==========================End Check MyGlance=================================================
//==========================Check Class=========================================
function checkSection(){
    var nameClass=document.getElementById("classnam").value;
    var classSection=document.getElementById("section").value;
    if(nameClass==""||classSection==""){
        document.getElementById("dmsg1").style.display="block";
        window.scrollTo(0, 0);
        return false;        
    }
    
}

function checkClass(){
    var sy=document.getElementById("syllabus").value;
    var nameClass=document.getElementById("classname").value;
    if(nameClass==""||sy==""){
        document.getElementById("dmsg1").style.display="block";
        window.scrollTo(0, 0);
        return false;        
    }
}
function checkSubject(){
    var sy=document.getElementById("subject").value;
    var nameClass=document.getElementById("classna").value;
    if(nameClass==""||sy==""){
        document.getElementById("dmsg1").style.display="block";
        window.scrollTo(0, 0);
        return false;        
    }
}
function checkManage(){
    var sub=document.getElementById("sub").value;
    var sec=document.getElementById("sect").value;
    var nameClass=document.getElementById("classn").value;
    var teacher=document.getElementById("teacher").value;
    if(nameClass==""||sub==""||sec==""||teacher==""){
        document.getElementById("dmsg1").style.display="block";
        window.scrollTo(0, 0);
        return false;        
    }
}
//==========================Check Class=========================================

//==================Check Scholl Register===============================================
function checkPassForm(){
    var old=document.getElementById("opass").value;
    var new_p=document.getElementById("npass").value;
    var conf=document.getElementById("cpass").value;
    if(old==""||new_p==""||conf==""){
        document.getElementById("dmsg1").style.display="block";
        return false;        
    }
}
function check_new(new_pwd){
    var new_pwd=document.getElementById("npass").value;
    var x=new_pwd.length;
    if(x==0||x<=5){
        document.getElementById("dmsg2").style.display="block";
        document.getElementById("sub").disabled=true;
    }else{
        document.getElementById("dmsg2").style.display="none";
        document.getElementById("sub").disabled=false;
    }
}
function check_confirmPassword(c_pwd){
    var npass=document.getElementById("npass").value;
    if(npass!=c_pwd){
        document.getElementById("dmsg3").style.display="block";
        document.getElementById("sub").disabled=true;
    }else{
        document.getElementById("dmsg3").style.display="none";
        document.getElementById("sub").disabled=false;
    }
}
//==================End Check Scholl Register===============================================
//==================Check Password===============================================
function checkForm(){
    var name=document.getElementById("sname").value;
    var email=document.getElementById("email").value;
    var board=document.getElementById("board").value;
    var city=document.getElementById("city").value;
    var state=document.getElementById("state").value;
    var med=document.getElementById("med").value;
    if(name=="" || email=="" || state=="" || city=="" || board=="" || med==""){
        document.getElementById("dmsg1").style.display="block";
        return false;
    }
}
//==================End Check Password===============================================
//==================Add Teacher============================================
function TeachercheckForm(){
    var desg=document.getElementById("designation").value;
    var qual=document.getElementById("qual").value;
    var name=document.getElementById("sname").value;
    var email=document.getElementById("email").value;
    var phn=document.getElementById("phone").value;
    var gender=document.getElementById("gender").value;
    var dob=document.getElementById("dob").value;
    var padd=document.getElementById("addr").value;
    var city=document.getElementById("city").value;
    var state=document.getElementById("state").value;
    var ecp=document.getElementById("ecp").value;
    var ephone=document.getElementById("ephone").value;
    if(email==""||name==""||city==""||state=="" || padd==""||gender==""||dob=="" ||phn=="" ||ecp==""||ephone=="" ||desg==""||qual==""){
        document.getElementById("dmsg3").style.display="block";
        document.getElementById("dmsg3").innerHTML="<strong>All Fields are required</strong><a href='javascript:;' onclick='removeMsg()' style='float:right; text-decoration:none;' id='ex'>x</a>";
        window.scrollTo(0, 0);
        return false;
    }
    if(phn.length!=10 || ephone.length!=10){
        document.getElementById("dmsg3").style.display="block";
        document.getElementById("dmsg3").innerHTML="<strong>Enter valid phone number</strong><a href='javascript:;' onclick='removeMsg()' style='float:right; text-decoration:none;' id='ex'>x</a>";
        window.scrollTo(0, 0);
        return false;
    }
}
//==================Add Teacher Ends============================================
//==================Numeric Only================================================
function isNumber(evt) {
    var iKeyCode = evt.keyCode;
    if ((iKeyCode == 46 || iKeyCode > 31) && (iKeyCode < 48 || iKeyCode > 57) ){
        document.getElementById("dmsg2").style.display="block";
        return false;
    }
    else{
        document.getElementById("dmsg2").style.display="none";
    }
    return true;
}
var httpResponse;
function checkBrowserObj(){
    if(window.ActiveXObject){                      
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
    if(window.XMLHttpRequest){
        return new XMLHttpRequest();
    }                    
}
function puneet() {
    httpResponse = checkBrowserObj();
    if(httpResponse!=null){
        var classn=document.getElementById("classn").value;
        if(classn==""){
            alert("Select any Class");
        }
        else{
            var path = "../school/forJs/getMySecton.jsp?cla="+classn;
            httpResponse.open("POST", path, true);
            httpResponse.send();
            httpResponse.onreadystatechange = myResponseSectionReceived;
        }    
    } else{
        alert("Please change your browser.");
    }
}
function myResponseSectionReceived(){
    if(httpResponse.readyState==4 && httpResponse.status==200){        
        if((httpResponse.responseText).trim()!=""){
            // document.getElementById("dkho").style.display="block";
            document.getElementById("me").innerHTML=httpResponse.responseText;
        }
        else{
            alert("Nothing");   
        }
    }
}

    //==================Numeric Only Ends============================================