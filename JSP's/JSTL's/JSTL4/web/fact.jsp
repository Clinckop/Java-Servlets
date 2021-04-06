<%-- 
    Document   : fact
    Created on : 3 Apr, 2021, 12:02:21 PM
    Author     : Lenovo
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post">
            Enter no :
            <input type='text' name='no' value="<c:out value="${param.radius}"/>"/><br/>
            <input type="submit" value="factorial">
        </form>
            <c:if test="${pageContext.request.method=='POST'}">
                <c:set var="fact" scope="session" value="1"/>
                <c:forEach var="i" begin="1" end="${param.no}">
                    <c:set var="fact" scope="session" value="${fact * i}"/>
                </c:forEach>
                <p>Factorial : ${fact}</p>
            </c:if>
    </body>
</html>
