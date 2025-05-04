<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver creation</title>
</head>
<body>
<h2>Driver creating</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required><br>
    License number <input type="text" name="licenseNumber" required><br>
    <button type="submit">Create</button>
</form>
<p><a href="${pageContext.request.contextPath}/drivers">Back</a></p>
</body>
</html>
