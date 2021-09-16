<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Cars</title>
</head>
<body>
<h1>Add car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars_add">
    CarModel <input type="text" name="model"><br>
    ManufacturerId <input type="text" name="manufacturer_id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
