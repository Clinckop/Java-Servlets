<%-- 
    Document   : extract
    Created on : 3 Apr, 2021, 12:53:13 PM
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
        Start index :
      <input type="text" name="start" value="<c:out value="${param.start}"/>"/><br/>
        End index :
      <input type="text" name="end" value="<c:out value="${param.end}"/>"/><br/>
        <br/>        
       <input type="submit" value="extract"/>
       <br />
      </form>
      <c:if test="${pageContext.request.method=='POST'}">
          <c:set var = "string2" value = "${fn:substring(param.st, param.start, param.end)}" />
          
      </c:if>
        ${string2}
    </body>
</html>