<%-- 
    Document   : index
    Created on : 2015-3-27, 20:05:03
    Author     : Liu
    备注       ：登陆界面，使用JS进行动态表单验证，将数据发往doreg.jsp
                页面中有四个操作控件：用户名输入框，密码输入框
                                   登陆按钮，重置按钮
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <script type="text/javascript">
            function checkUser(){
                var v = true;
                if(document.getElementById("user").value === ""){
                    v = false;
                    document.getElementById("checkuser").innerHTML = "用户名不得为空";
                    return v;
                }
                else{
                    document.getElementById("checkuser").innerHTML ="";
                    return v;
                }
                return v;
            }
            function checkPWD(){
                if(document.getElementById("password").value === ""){
                    v = false;
                    document.getElementById("checkpassword").innerHTML = "密不得为空";
                }
                else{
                    document.getElementById("checkpassword").innerHTML ="";
                }
                return v;
            }
        </script>
    </head>
    <body>
        <div align="center" >
            <form action="doreg.jsp" method="POST" id="form">
                用户名
                <input type="text" id="user" name="user"  onformchange="checkUser()"/> 
                <p id="checkuser"></p>
                密码
                <input type="password" id="password" name="password"  onformchange="checkPWD()"/>
                <p id="checkpassword"></p>
                <input type="submit" value="登陆"><input type="reset" value="重置">
            </form>
        </div>
    </body>
</html>
