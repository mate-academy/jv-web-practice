<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer result</title>
</head>
<body>
<h1>Manufacturer created and added to db</h1>
Id - <c:out value="${manufacturer.id}"/><br>
Name - <c:out value="${manufacturer.name}"/><br>
Country - <c:out value="${manufacturer.country}"/><br>
</body>
</html>
