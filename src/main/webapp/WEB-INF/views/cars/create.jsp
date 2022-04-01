<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 4/1/2022
  Time: 5:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>please the form below:</h1>
<form action="${pageContext.request.contextPath}/cars/create" method="post">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="number" name="manufacturer_id"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
