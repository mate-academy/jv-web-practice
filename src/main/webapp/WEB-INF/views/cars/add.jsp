<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model <input type="text" name="model" required><br>
    Manufacturer ID <input type="text" name="manufacturer" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
