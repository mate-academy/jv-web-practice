<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufactures registration</title>
</head>
<body>
<h2>Please, fill the form below</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name<input type = "text" name = "name"> <br>
    Country<input type="text" name="country"><br>
    <button type="submit"> Submit </button>
</form>
</body>
</html>
