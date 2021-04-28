<%-- 
    Document   : studentbean
    Created on : 28 Apr, 2021, 6:59:21 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javabeans.student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student bean</title>
    </head>
    <body>
        <jsp:useBean id="sb" class="javabeans.student">
            <jsp:setProperty name="sb" property="name" value="alex"/>
            <jsp:setProperty name="sb" property="age" value="22"/>
            
            <h1>student details</h1>
            Student name : <jsp:getProperty name="sb" property="name"/>
            Student age : <jsp:getProperty name="sb" property="age"/>
        </jsp:useBean>
    </body>
</html>
