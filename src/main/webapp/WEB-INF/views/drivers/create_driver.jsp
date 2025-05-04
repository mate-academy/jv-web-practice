
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Let's create a new driver in our service</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br><br>
    License Number <input type="text" name="license_number"><br><br>
    <button type="submit">LET`S GO</button>
</form>
</body>
</html>
