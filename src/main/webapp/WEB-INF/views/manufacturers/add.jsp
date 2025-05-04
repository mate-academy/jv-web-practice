<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new manufacturer</title>
</head>
<body>
<h1>Please, enter manufacturer details</h1>

<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add">
    Country <input type="text" name="country" required><br>
    Manufacturer name <input type="text" name="name" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
