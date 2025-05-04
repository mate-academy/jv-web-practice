<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer controller</title>
</head>
<body>
<h1>
    Please fill the form in:
</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer's country  <input type="text" name="country"><br>
    Manufacturer's name <input type="text" name="name"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
