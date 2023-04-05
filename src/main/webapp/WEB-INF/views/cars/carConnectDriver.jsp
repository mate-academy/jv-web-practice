<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/cars/all">
    <button type="submit"><--</button>
</form>
<h4>Connect a Driver to a Car</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/add-driver">
    Driver Id <br><input type="number" name="driverId"><br>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
