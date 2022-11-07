<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Create new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to main page</a></p>
</body>
</html>
