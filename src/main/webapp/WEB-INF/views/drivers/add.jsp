<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
    <h1>Fill in the form below:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name: <input type="text" name="name"><br>
        License number: <input type="text" name="license_number"><br>
        <button type="submit">Create driver</button>
    </form>
</body>
</html>
