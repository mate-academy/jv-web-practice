<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer creation</title>
</head>
<body>
<h2>Manufacturer creating</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name" required><br>
    Country <input type="text" name="country" required><br>
    <button type="submit">Create</button>
</form>
<p><a href="${pageContext.request.contextPath}/manufacturers">Back</a></p>
</body>
</html>
