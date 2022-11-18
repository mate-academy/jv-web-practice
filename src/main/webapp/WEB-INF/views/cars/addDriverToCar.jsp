<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to Car</title>
</head>
<body>
<p><strong>Write data:</strong></p>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <h2>Model <input type="text" name="model" required><br></h2>
    <h2>driver licence number <input type="text" name="licence number" required></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<form action="${pageContext.request.contextPath}">
    <input type="submit" value="BACK">
</form>
</body>
</html>
