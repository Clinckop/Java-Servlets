<%-- 
    Document   : login
    Created on : 25 Mar, 2021, 1:21:02 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String acc = request.getParameter("accno");
            String pin = request.getParameter("pin");
            String p = "3324",u = "hp445523",login;
            if(acc.equals(u) == true && pin.equals(p) == true)
            {
                login = "you are successfully logged in.";
            }
            else
            {
                login = "Entered login credentials are wrong.";
            }
        %>
        <label><%= login %></label>
    </body>
</html>
