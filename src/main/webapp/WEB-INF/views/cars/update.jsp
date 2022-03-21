<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update car</title>
</head>
<body>
<h1>Please write your data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/update">
    Id<br><input type="number" name="car_id"><br>
    Model<br><input type="text" name="model"><br>
    Manufacturer id<br><input type="number" name="manufacturer_id"><br>
    <button type="submit">Update</button>
</form>
</body>
</html>
