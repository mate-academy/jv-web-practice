<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<h1>Enter the data to add a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/create">
    Name  <input type="text" name = "name" required><br>
    License Number <input type="text" name = "license_number" required><br>
    <button type="submit">Add new driver</button>
</form>
<br/>
</body>
</html>
