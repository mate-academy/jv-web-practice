<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>Create new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
