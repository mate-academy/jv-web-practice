<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer Registration</title>
</head>
<body>
<h1>Please fill the manufacturer registration form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name" required><br>
    Manufacturer country <input type="text" name="country" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
