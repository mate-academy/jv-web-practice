<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Fill in all blanks, please</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufactured id=<input type="number" name="manufactured_id"><br>
    <button type="submit">confirm</button>
</form>
</body>
</html>