<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car creation page</title>
</head>
<body>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model: <input type="text" name="model"><br>
    Manufacturer ID: <input type="number" name="manufacturer"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>