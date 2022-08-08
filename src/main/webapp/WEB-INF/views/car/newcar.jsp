<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car registration</title>
</head>
<body>
<h1>Please enter a new car data below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/new">
    Car model <input type="text" name="model"><br>
    Car manufacturer's name <input type="text" name="manufacturerName"><br>
    <button type="submit">Save data</button>
</form>
</body>
</html>
