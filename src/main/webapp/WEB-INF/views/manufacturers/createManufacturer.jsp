<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please, fill the form below to add a new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
    Name  <input type="text" name = "name"><br>
    Country <input type="text" name = "country"><br>
    <button type="submit">Add manufacturer</button>
</form>
<br/>
</body>
</html>