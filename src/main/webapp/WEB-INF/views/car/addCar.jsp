<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h1>Please enter car information</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    ManufacturerID <input type="number" name="manufacturer_id" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
