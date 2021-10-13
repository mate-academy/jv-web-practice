<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>Create manufacturer</head>
<body>
<h1>Input manufacturer information</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
   Country <input type="text" name="country"><br>
    <button type="submit">Create new manufacturer</button>
</form>
</body>
</html>
