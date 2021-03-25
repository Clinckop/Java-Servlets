<%-- 
    Document   : salary
    Created on : 25 Mar, 2021, 11:06:20 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int esalary = Integer.parseInt(request.getParameter("esalary"));
    int HRA = (esalary/3)/100;
    int DA = (esalary/7)/100;
    int gross_salary = esalary+HRA+DA,net_salary = 0;
    if(gross_salary >= 20000)
    {
        net_salary = gross_salary - (gross_salary/5)/100;
    }
    if(gross_salary >= 50000)
    {
        net_salary = gross_salary - (gross_salary/8)/100;
    }
    if(gross_salary >= 100000)
    {
        net_salary = gross_salary - (gross_salary/11)/100;
    }   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Home Page</title>
    </head>
    <body> 
             
            <table>
                <tr>
                    <td>
                        <label>Employee salary</label>
                    </td>
                    <td>
                        : <%= esalary %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>HRA</label>
                    </td>
                    <td>
                        : <%= HRA %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>DA</label>
                    </td>
                    <td>
                        : <%= DA %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Gross salary</label>
                    </td>
                    <td>
                        : <%= gross_salary %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Net salary</label>
                    </td>
                    <td>
                        : <%= net_salary %>
                    </td>
                </tr>
            </table>
    </body>
</html>
