<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>create a driver</title>
</head>
<body>
    <p>
        <c:if test="${name != null}">
            Driver ${name} was created!
        </c:if>
    </p>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create_driver">
        <p>
            <label for="name">Driver's name:</label>
            <input type="text" id="name" name="name">
        </p>
        <p>
            <label for="licenseNumber">Driver's license Number:</label>
            <input type="text" id="licenseNumber" name="licenseNumber">
        </p>
        <button type="submit">CONFIRM</button>
    </form>
    <a href="${pageContext.request.contextPath}/">
        <button>BACK TO THE FUTURE</button>
    </a>
</body>
</html>
