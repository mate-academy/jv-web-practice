<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please write the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer ID <input type="text" name="id"><br>
    <button type="submit">Enter</button>
</form>
<tr>
    <td>Return to start</td>
    <td><a href="${pageContext.request.contextPath}/start">link</a></td>
</tr>
</body>
</html>
