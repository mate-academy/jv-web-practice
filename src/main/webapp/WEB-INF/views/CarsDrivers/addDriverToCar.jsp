<%--
  Created by IntelliJ IDEA.
  User: pizna
  Date: 15.03.2023
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Впишіть id для Машини та драйвера</h1>

<form method ="post" action="${pageContext.request.contextPath}/CarsDrivers/addDriverToCar">
  Car id <input type=text" name="car_id"><br>
  Driver id <input type=text" name="driver_id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
