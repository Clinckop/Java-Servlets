<%-- 
    Document   : detail
    Created on : 19 Mar, 2021, 12:41:23 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("r_name");
    String mail = request.getParameter("r_mail");
    String age = request.getParameter("r_age");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <label>Name : <%= name %></label><br/>
        <label>Mail : <%= mail %></label><br/>
        <label>Age : <%= age %></label>
    </body>
</html>
