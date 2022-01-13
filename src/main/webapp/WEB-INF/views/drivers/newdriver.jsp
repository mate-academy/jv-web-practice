<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of new Driver</title>
</head>
<body>
<h1>Input new Driver`s data:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/newdriver">
    Driver name : <input type="text" name="drivername" placeholder="Driver name"><br>
    Driver license: <input type="text" name="driverlicense" placeholder="Driver license number"><br>
    <button type="submit"> Input</button>
</form>
</body>
</br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
