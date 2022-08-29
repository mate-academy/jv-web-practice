<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 29.08.2022
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Панель управління</h1>
<h2>Додати:</h2>
    <ol>
        <li><a href="${pageContext.request.contextPath}/create/driver">Додати нового водія</a></li>
        <li><a href="${pageContext.request.contextPath}/create/manufacturer">Додати нового виробника</a></li>
        <li><a href="${pageContext.request.contextPath}/create/car">Додати новий транспорний засіб</a></li>
    </ol>
</body>
</html>
