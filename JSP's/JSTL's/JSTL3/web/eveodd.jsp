<%-- 
    Document   : eveodd
    Created on : 3 Apr, 2021, 11:50:50 AM
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
            Enter no :
            <input type="text" name="no" value="<c:out value="${param.radius}"/>"><br/>
            <input type="submit" value="even or odd">
        </form>
            <c:if test="${pageContext.request.method=='POST'}">
                <c:set var="number" scope="session" value="${param.no}"/>
                <c:if test="${number % 2 == 0}">
                    <p>Even</p>
                </c:if>
                <c:if test="${number % 2 != 0}">
                    <p>Odd</p>
                </c:if>
            </c:if>
    </body>
</html>
