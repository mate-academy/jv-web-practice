<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create New Driver</title>
</head>
<body>
    <h1>Create new Driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="license_number">License Number:</label><br>
        <input type="text" id="license_number" name="license_number"><br>
        <button type="submit">SUBMIT</button>
        <button type="reset">RESET</button>
    </form>
    <br><a href="${pageContext.request.contextPath}/index">Back to start page</a>
</body>
</html>
