<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h2>
    Add new manufacturer:
</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="manufacturerName">
    <br>
    Country <input type="text" name="country">
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
