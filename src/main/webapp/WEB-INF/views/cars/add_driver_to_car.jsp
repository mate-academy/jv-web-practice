<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
    <style type="text/css">

        button {
            border: blueviolet;
            border-radius: 7px;
            padding: 10px 25px;
            background: #AABBFF;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: bold;
            color: white;
        }
    </style>
</head>
<body><form action=index>
    <button>go to main menu</button>
</form>
<h1>Chose driver and  car</h1>
<form method="post" action="${pageContext.request.contextPath}/add_driver_to_car">
    Driver <select name="driver">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.getId()}">${driver.getName()}</option>
    </c:forEach>
</select>
    Car <select name="car">
    <c:forEach items="${cars}" var="car">
        <option value="${car.getId()}">${car.getModel()}</option>
    </c:forEach>
</select>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
