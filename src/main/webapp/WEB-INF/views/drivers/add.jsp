<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Please, enter driver details</h1>

<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add">
    License number <input type="text" name="license_number" required><br>
    Driver name <input type="text" name="name" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
