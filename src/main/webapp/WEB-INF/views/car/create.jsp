<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Creating car</h1>
    <form action="${pageContext.request.contextPath}/cars/create">
        Model <input type="text" name="model" required><br>
        Manufacturer <input type="text" name="manufacturer" required>
        <button type="submit">Accept</button>
    </form>
</body>
</html>
