<%-- 
    Document   : evenodd
    Created on : 25 Mar, 2021, 12:28:15 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int n1,n2,even=0,odd=0;
    n1 = Integer.parseInt(request.getParameter("n1"));
    n2 = Integer.parseInt(request.getParameter("n2"));
    for(int i = n1+1;i<n2;i++)
    {
       if(i % 2 == 0)
       {
           even = i + even;
       }
       else
       {
           odd = i + odd;
       }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>
                    Sum of evens
                </td>
                <td>
                    : <%=even%>
                </td>
            </tr>
            <tr>
                <td>
                    Sum of odds
                </td>
                <td>
                    : <%=odd%>
                </td>
            </tr>
        </table>
    </body>
</html>
