<%--
  Created by IntelliJ IDEA.
  User: Андрій
  Date: 16.12.2022
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add car</title>
    </head>
    <body>
        <h2>Fill the form and press button</h2>
        <form method="post" action="${pageContext.request.contextPath}/add/car">
            Model <label> <input type="text" name="model"> </label> <br>
            Manufacturer <label> <input type="text" name="manufacturer"></label> <br>
            <button type="submit">Add car</button>
        </form>
    </body>
</html>
