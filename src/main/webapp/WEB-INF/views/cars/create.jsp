<%--
  Created by IntelliJ IDEA.
  User: angel
  Date: 4/29/2022
  Time: 11:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Add a new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    MODEL<input type="text" name="model"><br>
    MANUFACTURER ID<input type="number" name="manufacturer_id"><br>
    <button type="submit">SUBMIT</button>
</form>
</body>
</html>
