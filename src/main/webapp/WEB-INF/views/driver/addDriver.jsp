<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver registration</title>
</head>
<body>
    <h1>Please, fill the form with drivers' data</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
