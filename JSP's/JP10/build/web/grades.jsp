<%-- 
    Document   : grades
    Created on : 25 Mar, 2021, 11:46:24 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name,erno,grade="";
    name = request.getParameter("sname");
    erno = request.getParameter("erno");
    float total,python,c,jscript,java,hhtml;
    python = Float.parseFloat(request.getParameter("python"));
    c = Float.parseFloat(request.getParameter("c"));
    jscript = Float.parseFloat(request.getParameter("jscript"));
    java = Float.parseFloat(request.getParameter("java"));
    hhtml = Float.parseFloat(request.getParameter("hhtml"));
    double percentage;
    total = python+c+java+jscript+hhtml;
    percentage = (total / 500.0) * 100;
    
                if(percentage<40){
                    grade = "F";
                }
                if(41 <= percentage && percentage <= 50){
                    grade = "D";
                }
                if(51 <= percentage && percentage <= 60){
                    grade = "C";
                }
                if(61 <= percentage && percentage <= 75){
                    grade = "B";
                }
                if(76 <= percentage){
                    grade = "A";
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
            <th>Result</th>
            <tr>
                <td>
                    Student name
                </td>
                <td>
                    : <%=name%>
                </td>
            </tr>
            <tr>
                <td>
                    Student no
                </td>
                <td>
                    : <%=erno %>
                </td>
            </tr>
            <tr>
                <td>
                    Total marks
                </td>
                <td>
                    : <%=total%>
                </td>
            </tr>
            <tr>
                <td>
                    Percentage
                </td>
                <td>
                    : <%=percentage%>
                </td>
            </tr>
            <tr>
                <td>
                    Grades
                </td>
                <td>
                    : <%=grade%>
                </td>
            </tr>
        </table>       
    </body>
</html>
