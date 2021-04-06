<%-- 
    Document   : merge
    Created on : 3 Apr, 2021, 1:02:41 PM
    Author     : Lenovo
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form method="post">
        Enter String :
      <input type="text" name="st" value="<c:out value="${param.st}"/>"/><br/>
       <input type="submit" value="merge"/>
      </form>
      <c:if test="${pageContext.request.method=='POST'}">
     
        <c:set var="splitNumbers" value="${fn:split(param.st,',')}" />
        <c:set var="joinedNumbers" value="${fn:join(splitNumbers,' ')}" />
       
        <p>Joined String: ${joinedNumbers}</p>

      </c:if>
    </body>
</html>
