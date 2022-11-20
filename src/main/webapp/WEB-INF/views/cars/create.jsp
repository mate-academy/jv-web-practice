<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car registration</title>
</head>
<body>
<h1>Please fill out the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model <input type="text" name="model"><br>
    Car manufacturer <input type="text" name="manufacturer"><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
