<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name: <input type="text" name="manufacturer_name" placeholder="Manufacturer name"><br>
    Country: <input type="text" name="manufacturer_country" placeholder="Manufacturer country"><br>
    <button type="submit"> Create</button>
</form>
<br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
