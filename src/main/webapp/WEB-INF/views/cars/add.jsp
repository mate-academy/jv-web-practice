<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>To add car fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model<input type="text" name="model"><br>
    Manufacturer<input type="text" name="manufacturerId"><br>
    <button type="submit">Add car</button>
</form>

</body>
</html>
