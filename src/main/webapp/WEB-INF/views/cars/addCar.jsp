<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CarCreating</title>
</head>
<body>
<h1>You can add new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addCar">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="number" name="manufacturer_id">
    <button type="submit">Add</button>
</form>
</table>
</body>
</html>
