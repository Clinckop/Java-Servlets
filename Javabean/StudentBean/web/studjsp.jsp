<%-- 
    Document   : studjsp
    Created on : 28 Apr, 2021, 7:39:40 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Studjsp</title>
    </head>
    <body>
        <jsp:useBean id="sb" class="bean.auth">
            <jsp:setProperty name="sb" property="name" param="name"/>
            <jsp:setProperty name="sb" property="rollno" param="rollno"/>
            <jsp:setProperty name="sb" property="total_marks" param="total_marks"/>
            
            <h1>student details</h1>
            Student name : <jsp:getProperty name="sb" property="name"/><br/>
            Student roll no : <jsp:getProperty name="sb" property="rollno"/><br/>
            Student total marks : <jsp:getProperty name="sb" property="total_marks"/><br/>
            Student percentage : <jsp:getProperty name="sb" property="percentage"/>
        </jsp:useBean>
    </body>
</html>
