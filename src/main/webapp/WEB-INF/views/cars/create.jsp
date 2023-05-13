<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create a new car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model <input type="text" name="model" required>
    Manufacturer ID <input type="number" name="manufacturer_id" min="0" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${contentType.request.contextPath}/index">Back to menu</a>
</body>
</html>
