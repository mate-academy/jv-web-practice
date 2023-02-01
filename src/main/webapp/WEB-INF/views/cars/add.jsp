<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
<h1>
    Add new car:
</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model">
    <br>
    Manufacturer id <input type="text" name="manufacturerId">
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>