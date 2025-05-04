<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver result</title>
</head>
<body>
<h1>Driver created and added to db</h1>
Id - <c:out value="${driver.id}"/><br>
Name - <c:out value="${driver.name}"/><br>
Licence number - <c:out value="${driver.licenseNumber}"/><br>
</body>
</html>