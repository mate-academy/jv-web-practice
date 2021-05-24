<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name: <input type="text" name="name"><br>
    License number: <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
<p>
    <a href="${pageContext.request.contextPath}/">
        <button type="submit">MAIN MENU</button>
    </a>
</p>
</body>
</html>
