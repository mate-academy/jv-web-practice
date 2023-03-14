<%--
  Created by IntelliJ IDEA.
  User: stim1
  Date: 13.03.2023
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add a driver to a car</title>
</head>
<body>
<h1>Fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car ID <label>
    <input type="text" name="carId">
</label><br>
    Driver ID <label>
    <input type="text" name="driverId">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
