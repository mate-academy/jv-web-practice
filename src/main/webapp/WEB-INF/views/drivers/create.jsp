<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <h1>Hello! Fill the columns below!</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name: <input type="text" name="name"><br>
        License number: <input type="text" name="license_number"><br>
        <button type="submit">Confirm</button>
    </form>

</body>
</html>
