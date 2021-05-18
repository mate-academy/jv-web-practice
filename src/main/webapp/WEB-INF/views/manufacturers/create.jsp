<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new manufacturer</title>
</head>
<body>
<h1>Enter the information about a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name" required><br>
    Country = <input type="text" name="country" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
