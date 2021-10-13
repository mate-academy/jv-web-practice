<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>Create driver</head>
<body>
<h1>Input driver information</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
   Name <input type="text" name="name"><br>
   License number <input type="number" name="license_number"><br>
    <button type="submit">Create new driver</button>
</form>
</body>
</html>
