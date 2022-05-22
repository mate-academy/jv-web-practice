<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding driver</title>
</head>
<body>
<h1>Fill all fields for driver</h1>
<form method="post" action="${pageContext.request.contextPath}/add-driver">
    Name: <input type="text" name="name"><br>
    License Number: <input type="text" name="licenseNumber"><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
