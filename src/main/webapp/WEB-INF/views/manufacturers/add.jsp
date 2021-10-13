<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Add new manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <label>
    <input type="text" name="manufacturer_name">
</label><br>
    Manufacturer country <label>
    <input type="text" name="manufacturer_country">
</label><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
