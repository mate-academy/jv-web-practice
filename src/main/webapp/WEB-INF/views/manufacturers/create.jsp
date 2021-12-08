<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1> Create manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="manufacturerName"><br>
    Country <input type="text" name="manufacturerCountry"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
