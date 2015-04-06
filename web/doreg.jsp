<%-- 
    Document   : doreg
    Created on : 2015-3-27, 20:07:02
    Author     : Liu
    备注       : 本文件用来处理接收到的用户名和密码，不要处理对象us，
                对string name,password进行操作
--%>

<%@page contentType="text/html" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="us" class="tongjisse.UserInfo" scope="request"/>
<jsp:setProperty name="us" property="*"/>
<%
    request.setCharacterEncoding("UTF-8");
    us.setName(request.getParameter("user"));
    us.setPassword(request.getParameter("password"));
    String name = us.getName();
    String password = us.getPassword();
    
    if(name.equals("") || password.equals("")){
%>
    <jsp:forward page="/false.jsp"/>
<%  }else{ %>
    <jsp:forward page="/success.jsp"/>
<%  }  %>
