<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver creation</title>
</head>
<body>
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <br><input type="text" name="name" required><br>
    License number <br><input type="text" name="license_number" required><br><br>
    <button type="submit" onclick="alert('If you will have an exclamation message '
    + 'driver won\'t be added')">Add driver</button>
    <button type="reset">Cancel</button>
</form>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
