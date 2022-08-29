<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 29.08.2022
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
    <h1>Заповніть інформацію про нового водія</h1>
    <form method="post" action="${pageContext.request.contextPath}/create/driver">
        Ім'я <input type="text" name="name"><br>
        Номер ліцензії <input type="text" name="license_number"><br>
        <button type="submit">Додати</button>
    </form>
</body>
</html>
