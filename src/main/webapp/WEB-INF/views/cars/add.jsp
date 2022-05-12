<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
    <h1>Fill in the form below:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model: <input type="text" name="model"><br>
        Manufacturer ID: <input type="text" name="manufacturer_id"><br>
        <button type="submit">Create car</button>
    </form>
</body>
</html>
