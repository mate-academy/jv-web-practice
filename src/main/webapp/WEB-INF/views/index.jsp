<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Панель управління</h1>
<h2>Інформація</h2>
<ol>
    <li><a href="${pageContext.request.contextPath}/cars">Відобразити всі транспортні засоби</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers">Відобразити всіх водіїв</a></li>
    <li><a href="${pageContext.request.contextPath}/manufacturers">Відобразити всіх виробників</a></li>
</ol>
<h2>Додавання нової інформації</h2>
<ol>
    <li><a href="${pageContext.request.contextPath}/create/driver">Додати нового водія</a></li>
    <li><a href="${pageContext.request.contextPath}/create/manufacturer">Додати нового виробника</a></li>
    <li><a href="${pageContext.request.contextPath}/create/car">Додати новий транспорний засіб</a></li>
    <li><a href="${pageContext.request.contextPath}/add_driver_to_car">Додати нового водія до транспортного засобу</a></li>
</ol>
</body>
</html>
