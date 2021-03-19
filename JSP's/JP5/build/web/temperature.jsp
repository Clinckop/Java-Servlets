<%-- 
    Document   : temperature.jsp
    Created on : 19 Mar, 2021, 7:25:17 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    float f = Float.parseFloat(request.getParameter("temp"));
    float c;
    c = (f-32)*5/9;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Celcius = <%=c%></h1>
    </body>
</html>
