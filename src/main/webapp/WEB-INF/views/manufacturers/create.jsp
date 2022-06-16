<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Create new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name"><br>
    Manufacturer country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
