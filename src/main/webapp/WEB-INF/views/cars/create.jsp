<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Please input info about your car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model<input type="text" name="model" required><br>
    Manufacturer ID<input type="text" name="manufacturer" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${pageContext.request.contextPath}/index">go back</a>
</body>
</html>