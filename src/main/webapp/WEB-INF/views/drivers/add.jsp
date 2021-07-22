<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name driver :<input type="text" name="name_driver" required><br>
    License number :<input type="text" name="license_number" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
