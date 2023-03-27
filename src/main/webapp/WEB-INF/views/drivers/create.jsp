<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please write the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Enter</button>
</form>
<tr>
    <td>Return to start</td>
    <td><a href="${pageContext.request.contextPath}/index">link</a></td>
</tr>
</body>
</html>
