<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer creation page</title>
</head>
<body>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name: <input type="text" name="name" required><br>
    Country: <input type="text" name="country" required><br>
    <button type="submit">CREATE</button>
</form>
<h2>Navigation:</h2>
<a href="${pageContext.request.contextPath}/manufacturers">BACK to MANUFACTURERS</a><br>
<a href="${pageContext.request.contextPath}/index">BACK to START PAGE</a>
</body>
</html>
