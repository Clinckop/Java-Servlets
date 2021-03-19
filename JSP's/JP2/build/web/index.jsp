<%-- 
    Document   : index
    Created on : 19 Mar, 2021, 11:46:26 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function addition()
            {
                var a = parseInt(addnumbers.txt1.value);
                var b = parseInt(addnumbers.txt2.value);
                var c = a+b;
                document.getElementById("aa").value = c;
            }
        </script>
    </head>
    <body>
        <form  name="addnumbers" method="GET">
            First no:
            <input type="text" name="txt1">
            Second no:
            <input type="text" name="txt2">
            <input type="button" value="add" onclick="addition()">
            <input type="text" id="aa" name="result">
            
        </form>
    </body>
</html>
