<%--
  Created by IntelliJ IDEA.
  User: kqlyn
  Date: 13.07.2022
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create new car</title>
</head>
<body>
    <h1>create new car</h1>
    <form>method="post" action="${pageContext.request.contextPath}/cars/create">
        Car model <input type="text" name="model"><br>
        Manufacturer id <input type="text" name="manufacturer_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/cars">To cars</a>
</footer>
</html>
