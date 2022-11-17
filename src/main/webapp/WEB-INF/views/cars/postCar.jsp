<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please write data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <h2>Car model <input type="text" name="model"><br></h2>
    <h2>Manufacturer <input type="text" name="manufacturer"><br></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<h3><a href="http://localhost:8080/main">BACK</a></h3>
</body>
</html>
