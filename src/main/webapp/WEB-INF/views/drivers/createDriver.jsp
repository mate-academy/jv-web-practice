<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please, fill the form below to add a new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/add">
    Name <input type="text" name = "name"><br>
    License Number <input type="text" name = "license_number"><br>
    <button type="submit">Add driver</button>
</form>
<br/>
</body>
</html>