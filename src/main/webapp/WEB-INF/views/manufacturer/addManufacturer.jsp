<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Please enter manufacturer information</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name" required><br>
    LicenseNumber <input type="text" name="country" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
