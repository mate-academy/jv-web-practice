<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver to drivers database</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/create/driver">
    name <input type="text" name="name"><br>
    license <input type="text" name="license"><br>
    <button type="submit">Add driver</button>
</form>
</body>
</html>
