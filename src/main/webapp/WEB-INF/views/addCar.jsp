<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
    <h1>Enter car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input type="text" name="model" required><br>
        Manufacturer Id <input type="text" name="manufacturer_id" required><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
