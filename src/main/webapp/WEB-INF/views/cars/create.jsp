<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create a car controller</title>
</head>
<body>
<h1>
  Please fill the form in:
</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Car's model <input type="text" name="car_model"><br>
  Car's manufacturer id <input type="text" name="manufacturer_id"><br>
  <button type="submit">Submit</button>
</form>
</body>
</html>

