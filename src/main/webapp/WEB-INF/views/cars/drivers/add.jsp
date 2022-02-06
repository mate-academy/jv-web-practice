<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver addition page</title>
</head>
<body>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver's ID: <input type="text" name="driverID" required><br>
    Car ID: <input type="text" name="carID" required><br>
    <button type="submit">Submit</button>
</form>
<a href="${pageContext.request.contextPath}/cars">Back to cars list</a><br>
<a href="${pageContext.request.contextPath}/index">Back to index</a>
</body>
</html>
