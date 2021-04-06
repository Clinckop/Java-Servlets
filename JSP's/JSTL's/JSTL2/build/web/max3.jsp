<%-- 
    Document   : max3
    Created on : 3 Apr, 2021, 11:22:31 AM
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
  <h2> Maximum of the 3 Solver in JSTL</h2>
  <br>
    <form method="post">
      No1 :
      <input type="text" name="one" value="<c:out  value="${param.one}"/>"/><br/>
      No2 :
      <input type="text" name="two" value="<c:out value="${param.two}"/>"/><br/>
      No3 :
      <input type="text" name="three" value="<c:out value="${param.three}"/>"/><br/>
      <input type="submit" value="find"/>
      <br/>
    </form>
    <c:if test="${pageContext.request.method=='POST'}">
        <c:set var="n1" scope="session" value="${param.one}"/>
        <br>
        <c:set var="n2" scope="session" value="${param.two}"/>
        <br>
        <c:set var="n3" scope="session" value="${param.three}"/>
        <c:if  test = "${n1 >= n2 && n1 >= n3}">
            <p>No1 is maximum.<p>
        </c:if>
        <c:if  test = "${n2 >= n1 && n2 >= n3}">  
            <p>No2 is maximum.<p>
        </c:if>
        <c:if  test = "${n3 >= n1 && n3>= n2}">
            <p>No3 is maximum.<p>
        </c:if>
    </c:if>
</body>
</html>
