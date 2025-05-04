<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Create a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label for="name">Name </label>
    <input type="text" id="name" name="name" required>
    <label for="licence_number">Licence number </label>
    <input type="text" id="licence_number" name="licence_number" required>
    <button type="submit">Create driver</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
