<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please enter parameters to create a car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer id <input type="number" name="manufacturerId"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
