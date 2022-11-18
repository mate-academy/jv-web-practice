<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<p><strong>Write data:</strong></p>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <h2>Driver name <input type="text" name="name" required><br></h2>
    <h2>License Number <input type="text" name="licenseNumber" required><br></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<form action="http://localhost:8080/main">
    <input type="submit" value="BACK">
</form>
</body>
</html>
