<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <div style="width: 40%"><p>Enter car id <input name="carId" type="text" style="float: right"></p></div>
    <div style="width: 40%"><p>Enter driver id <input name="driverId" type="text" style="float: right"></p></div>
    <input name ="button" type="submit" value="ADD">
</form>
</body>
</html>
