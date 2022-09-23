<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    TABLE {
        width: 700px; /* Ширина таблицы */
        border: 2px outset; /* Рамка вокруг таблицы */
        background: whitesmoke; /* Цвет фона таблицы */
    }
    TD, TH {
        text-align: center; /* Выравнивание по центру */
        padding: 3px; /* Поля вокруг содержимого ячеек */
        width: 150px;
    }
    TH {
        background: #4682b4; /* Цвет фона */
        color: white; /* Цвет текста */
        border-bottom: 2px solid black; /* Линия снизу */
    }
    .lc {
        font-weight: bold; /* Жирное начертание текста */
        text-align: left; /* Выравнивание по левому краю */
    }
</style>
<h1>List of cars:</h1>
<table>
    <tbody>
        <tr>
            <th>MODEL</th>
            <th>MANUFACTURER</th>
            <th>DRIVERS</th>
            <th>DELETE</th>
        </tr>
        <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name} ${car.manufacturer.country}"/></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/>
                <c:out value="${driver.licenseNumber}"/>
            </c:forEach></td>
            <td><a href="${pageContext.request.contextPath}/getAllCars/delete?id=${car.id}">delete this car</a></td>
        </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
