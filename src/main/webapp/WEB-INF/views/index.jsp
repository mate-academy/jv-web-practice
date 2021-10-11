<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Main</title>
</head>
<body>
    <h2>WHAT DO YOU WANT TO DO?</h2>
    <a href="${pageContext.request.contextPath}/drivers/create_driver">
        <button>CREATE A DRIVER</button>
    </a>
    <a href="${pageContext.request.contextPath}/drivers/display_all_drivers">
        <button>DISPLAY ALL DRIVERS</button>
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers/create_manufacturer">
        <button>CREATE A MANUFACTURER</button>
    </a>
    <a href="${pageContext.request.contextPath}/cars/create_car">
        <button>CREATE A CAR</button>
    </a>
    <a href="${pageContext.request.contextPath}/cars/driver_car">
        <button>ADD A DRIVER TO A CAR</button>
    </a>
</body>
</html>
