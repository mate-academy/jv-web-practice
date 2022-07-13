<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create new driver</title>
</head>
<body>
    <h1>create new driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Driver name <input type="text" name="name"><br>
        License number <input type="text" name="license_number"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/drivers">To drivers</a>
</footer>
</html>
