<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<p><strong>Write data:</strong></p>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <h2>Car model <input type="text" name="model" required><br></h2>
    <h2>Manufacturer <input type="text" name="manufacturer" required><br></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<form action="${pageContext.request.contextPath}">
    <input type="submit" value="BACK">
</form>
</body>
</html>
