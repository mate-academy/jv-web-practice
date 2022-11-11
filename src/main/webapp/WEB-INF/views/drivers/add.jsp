<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form mathod="get" action="${pageContext.request.contextPath}/drivers/add">
     Driver id <input type="text" name = "driverId">
     Car Id <input type="text" name = "carId">
    <button type="submit">Confirm</button>
</form>
</body>
</html>
