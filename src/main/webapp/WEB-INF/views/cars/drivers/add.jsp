<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add driver to car</title>
  <%@include file='/WEB-INF/views/common/header.html' %>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Car id <input type="number" name="carId"><br>
  Driver id <input type="number" name="driverId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>