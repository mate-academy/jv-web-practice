<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Successful operation</title>
</head>
<body>
Congrats! Car with id: <c:out value="${car.id}"/> now has driver with id: <c:out value="${driver.id}"/>
</body>
</html>
