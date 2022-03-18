<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update manufacturer</title>
</head>
<body>
<h1>Please write your data</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/update">
    Id<br><input type="number" name="id"><br>
    Name<br><input type="text" name="name"><br>
    Country<br><input type="text" name="country"><br>
    <button type="submit">Update</button>
</form>
</body>
</html>
