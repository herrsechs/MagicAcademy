<%-- 
    Document   : success
    Created on : 2015-3-27, 20:08:14
    Author     : Liu
    备注        :登陆成功页面
--%>

<%@page contentType="text/html" import="tongjisse.UserInfo" pageEncoding="UTF-8"%>
<%
    String username = ((UserInfo)request.getAttribute("us")).getName();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册成功</title>
    </head>
    <body>
        <ul>
            <li>注册成功！ </li>
            <li>欢迎 <%=username%>&nbsp&nbsp 来到魔法学院的世界！</li>
            <li>前往<a href="question.jsp">[单人闯关]</li>
        </ul>
    </body>
</html>
