<%-- 
    Document   : disp
    Created on : 22 Apr, 2021, 11:41:47 AM
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
        <jsp:useBean id="sb" class="javabeans.student">
            <jsp:setProperty name="sb" property="rno" param="rno"/>
            <jsp:setProperty name="sb" property="sname" param="sname"/>
            <jsp:setProperty name="sb" property="total" param="total"/>
        
            <table>
                <tr colspan="2">Student details</tr>
                <tr>
                    <td>
                        Student roll no
                    </td>
                    <td>
                        <jsp:getProperty name=""/>
                    </td>
                </tr>
            </table>
        </jsp:useBean>
    </body>
</html>
