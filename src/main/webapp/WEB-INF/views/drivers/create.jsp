<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>Create new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="name"><br>
    Driver license Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
