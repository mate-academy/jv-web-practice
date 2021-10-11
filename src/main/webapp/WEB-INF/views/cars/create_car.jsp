<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create a car</title>
</head>
<body>
    <p>
        <c:if test="${name != null}">The car: {name}, was created!</c:if>
    </p>
    <form method="post" action="${pageContext.request.contextPath}/cars/create_car">
        <p>
            <label for="model">Car's name:</label>
            <input type="text" id="model" name="model">
        </p>
        <p>
            <label for="manufacturer">Car's manufacturer:</label>
            <input type="number" id="manufacturer" name="manufacturer">
        </p>
        <button type="submit">CONFIRM</button>
    </form>

</body>
</html>
