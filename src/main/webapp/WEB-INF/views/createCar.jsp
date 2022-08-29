<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 29.08.2022
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Заповніть інформацію про новий автомобіль</h1>
<form method="post" action="${pageContext.request.contextPath}/create/car">
    Модель <input type="text" name="model"><br>
    Id виробника <input type="text" name="id_manufacturer"><br>
    <button type="submit">Додати</button>
</form>
</body>
</html>
