<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create CAR</title>
</head>
<body>
<h1>Create car using these fields</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input type="text" name="model"><br>
        Manufacturer id <input type="number" name="manufacturerId"><br>
        <button type="submit">create</button>
    </form>
</body>
</html>
