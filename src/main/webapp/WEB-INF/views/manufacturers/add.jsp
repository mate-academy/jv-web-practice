<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name :<input type="text" name="name_manufacturer" required><br>
    Country :<input type="text" name="country_manufacturer" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
