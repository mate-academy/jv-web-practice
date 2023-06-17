<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a car</title>
</head>
<body>
<h1>Form creating a car</h1>

<from method="post" action="${pageContext.request.contextPath}/cars/creating">
    Model <input type="text" name="model"><br>
    Manufacturer_id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</from>

</body>
</html>