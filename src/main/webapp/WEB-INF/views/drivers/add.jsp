<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Enter driver's info</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver's name <br><input type="text" name="name" required><br>
    License number <br><input type="text" name="license_number" required><br><br>
    <button type="submit">Add driver</button>
    <button type="reset">Cancel</button>
</form>
<form action="${pageContext.request.contextPath}/index" target="_blank">
    <button>Back to main</button>
</form>
</body>
</html>
