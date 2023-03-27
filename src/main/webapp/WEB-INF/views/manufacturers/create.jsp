<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Please write the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Enter</button>
</form>
<tr>
    <td>Return to start</td>
    <td><a href="${pageContext.request.contextPath}/index">link</a></td>
</tr>
</body>
</html>
