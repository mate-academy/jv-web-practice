<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Fill fields to create Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name: <input type="text" name="name"><br>
    Manufacturer Id: <input type="number" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
