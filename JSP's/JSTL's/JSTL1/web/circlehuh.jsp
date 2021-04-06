<%-- 
    Document   : circlehuh
    Created on : 3 Apr, 2021, 11:18:43 AM
    Author     : Lenovo
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post">
            Radius :
            <input type="text" name="radius" value="<c:out value="${param.radius}"/>"/><br/>
            <input type="submit" value="area"/>
            <br/>
        </form>
            <c:if test="${pageContext.request.method=='POST'}">
                <c:set var="convert" scope="session" value="${(param.radius * param.radius) * 3.1516}"/>
                <c:set var="perimeter" scope="session" value="${2 * 3.14 * (param.radius)}"/>
                <br/>
                Area of circle : <fmt:formatNumber value="${convert}" maxFractionDigits="2"/>
                <br/>
                Area of the perimeter : <fmt:formatNumber value="${perimeter}" maxFractionDigits="2"/>.
            </c:if>
    </body>
</html>

