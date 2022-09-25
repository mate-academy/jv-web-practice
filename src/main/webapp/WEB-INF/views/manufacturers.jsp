<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<style>
    TABLE {
        width: 600px; /* Ширина таблицы */
        border: 2px outset; /* Рамка вокруг таблицы */
        background: whitesmoke; /* Цвет фона таблицы */
    }
    TD, TH {
        text-align: center; /* Выравнивание по центру */
        padding: 3px; /* Поля вокруг содержимого ячеек */
        width: 250px;
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
    <h1>List of manufacturers:</h1>
    <table>
        <tbody>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>COUNTRY</th>
                <th>DELETE</th>
            </tr>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <tr>
                    <td><c:out value="${manufacturer.id}"/></td>
                    <td><c:out value="${manufacturer.name}"/></td>
                    <td><c:out value="${manufacturer.country}"/></td>
                    <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
