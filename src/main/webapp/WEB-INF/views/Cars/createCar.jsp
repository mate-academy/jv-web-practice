<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pizna
  Date: 15.03.2023
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Впишіть поля нової машини</h1>

<form method ="post" action="${pageContext.request.contextPath}/Cars/createCar">
  Model <input type=text" name="model"><br>
  Manufacturer_id <input type=text" name= "manufacturer.id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
