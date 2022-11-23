<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>
        Name <input type="text" name="model" required><br>
    </label>
    <label>
        Manufacturer_id <input type="number" name="manufacturer_id" required><br>
    </label>
    <button type="submit">Add</button>
</form>
<a href="${pageContext.request.contextPath}/index">Back</a>
</body>
</html>
