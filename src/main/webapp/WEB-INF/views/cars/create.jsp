<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model         <input type="text" name = "model" required>  <br><br>
    Manufacturer id <input type="text" name="manufacturer_id"><br>
    <br><br>
  <button type="submit" > ADD car without driver </button>
</form>
</body>
</html>
