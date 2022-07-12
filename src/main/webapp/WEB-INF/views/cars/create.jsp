<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model" required><br>
    Manufacturer ID <input type="text" name="manufacturer_id" required><br>
    <button type="submit">Create</button>
</form>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/cars">To cars</a>
</footer>
</html>
