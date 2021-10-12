<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer creation page</title>
</head>
<body>
<h1>Please fill required information below:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name: <input type="text" name="name"><br>
    Country: <input type="text" name="country"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>