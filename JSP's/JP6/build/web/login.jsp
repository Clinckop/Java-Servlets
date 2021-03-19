<%-- 
    Document   : login
    Created on : 19 Mar, 2021, 7:51:31 PM
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
            String username = request.getParameter("email");
            String password = request.getParameter("pass");
            String p = "p1234",u = "hpatel691999@gmail.com",login;
            if(username.equals(u) == true && password.equals(p) == true)
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
