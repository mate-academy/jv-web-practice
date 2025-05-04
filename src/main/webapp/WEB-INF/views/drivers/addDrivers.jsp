<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to our service</title>
</head>
<body>
<br>
<h1>
    Create and add a new driver:
</h1>
<br>
<br>
<form method="post" action="${pageContext.request.contextPath}/drivers/create" style="text-align: center">
    Name <label>
    <input type="text" name="name">
</label>
    <br>
    <br>
    License number <label>
    <input type="text" name="license_number">
</label>
    <br>
    <br>
    <button type="submit">
        Add new driver
    </button>
</form>
<h1>
    <a href="${pageContext.request.contextPath}/" style="color: grey; text-decoration: none">BACK TO MAIN PAGE</a>
</h1>
</body>
</html>
