<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<style>
  TABLE {
    width: 500px; /* Ширина таблицы */
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
<h1>List of drivers:</h1>
<table>
  <tbody>
  <tr>
    <th>NAME</th>
    <th>LICENSE NUMBER</th>
    <th>DELETE</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td><a href="${pageContext.request.contextPath}/getAllDrivers/delete?id=${driver.id}">delete this driver</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
