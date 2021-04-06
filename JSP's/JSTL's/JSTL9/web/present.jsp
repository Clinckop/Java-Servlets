<%-- 
    Document   : present
    Created on : 3 Apr, 2021, 12:58:37 PM
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
        Enter string 1:
      <input type="text" name="st" value="<c:out value="${param.st}"/>"/><br/>
         Enter string 2:
      <input type="text" name="start" value="<c:out value="${param.start}"/>"/><br/>
       <input type="submit" value="present?"/>

      </form>
      <c:if test="${pageContext.request.method=='POST'}">
         <c:if test = "${fn:contains(param.st,param.start)}">
             <p>Found string<p>
         </c:if> 
         <c:if test = "${!fn:contains(param.st,param.start)}">
             <p>string not Found <p>
         </c:if>  
          
      </c:if>
    </body>
</html>
