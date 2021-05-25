<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Please enter car data</h1>

<form method="post" action="${pageContext.request.contextPath}/car/create">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="text" name="manufacturerId"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
