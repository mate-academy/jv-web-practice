<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update driver</title>
</head>
<body>
<h1>Please write your data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/update">
    Id<br><input type="number" name="id"><br>
    Name<br><input type="text" name="name"><br>
    License number<br><input type="text" name="license_number"><br>
    <button type="submit">Update</button>
</form>
</body>
</html>
