<%-- 
    Document   : pattern
    Created on : 3 Apr, 2021, 12:24:23 PM
    Author     : Lenovo
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pattern</title>
    </head>
    <body>
    <form method="post">
        Enter a number &nbsp; &nbsp;
        <input type="text" name="number"  size="3" value="<c:out value="${param.number}"/>"/><br>
            <br/>
        <input type="submit" value="pattern"/>
        </form>
        <c:if test="${pageContext.request.method=='POST'}">
            <c:forEach var="i" begin="1" end="${param.number}">
                <c:set var="k" scope="session" value="${6-i}"/>
                <c:forEach var="j" begin="1" end="${k}">
                    ${j}
                </c:forEach><br/>
            </c:forEach> 
          </c:if>
    </body>
</html>

