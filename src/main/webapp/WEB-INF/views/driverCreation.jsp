<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver creation</title>
</head>
<body>
<h1>Please fill full the form below.</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    License number <input type="text" name="licenseNumber" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
