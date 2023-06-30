<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Create Car</h1>
    <form method="POST" action="${pageContext.request.contextPath}/cars/add">
        <label for="name">Name:</label>
        <input type="text" id="name" name="model" required><br><br>
        <label for="manufacturer">Manufacturer:</label>
        <input type="number" id="manufacturer" name="manufacturer_id" required><br><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
