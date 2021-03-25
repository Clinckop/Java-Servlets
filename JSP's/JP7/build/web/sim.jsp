<%-- 
    Document   : si
    Created on : 25 Mar, 2021, 9:13:13 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    float si,amount,yperiod,rate;
    amount = Float.parseFloat(request.getParameter("amount"));
    rate = Float.parseFloat(request.getParameter("rate"));
    yperiod = Float.parseFloat(request.getParameter("tperiod"));
    si = (amount * yperiod * rate) / 100;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <label>Simple interest = <%= si %></label>
    </body>
</html>
