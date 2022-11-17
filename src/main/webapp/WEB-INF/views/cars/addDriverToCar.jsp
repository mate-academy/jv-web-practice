<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <h2>Model <input type="text" name="model" required><br></h2>
    <h2>driver licence number <input type="text" name="licence number" required></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<h3><a href="http://localhost:8080/main">BACK</a></h3>
</body>
</html>
