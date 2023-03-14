<%--
  Created by IntelliJ IDEA.
  User: stim1
  Date: 13.03.2023
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a new Car</title>
</head>
<body>
<h1>To create a new car, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <label>
    <input type="text" name="model">
</label><br>
    Manufacturer <label>
    <input type="text" name="manufacturer">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
