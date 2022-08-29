<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 29.08.2022
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Taxi service</title>
</head>
<body>
<h1>Заповніть інформацію про виробника</h1>
<form method="post" action="${pageContext.request.contextPath}/create/manufacturer">
  Назва компанії <input type="text" name="name"><br>
  Країна <input type="text" name="country"><br>
  <button type="submit">Додати</button>
</form>
</body>
</html>
