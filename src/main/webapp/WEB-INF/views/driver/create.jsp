<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page " />
</form>
<h1>Create a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name"> Name:</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="license_number">License number:</label><br>
    <input type="text" id="license_number" name="license_number" required><br>
    <button type="submit">Create</button>
</form>
</form>
</body>
</html>
