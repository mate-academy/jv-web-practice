<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding new car to DB</title>
</head>
<body>
<h1>Adding new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model <input type="text" name="carModel"> <br>
  Manufacturer ID <input type="text" name="manufacturerId"> <br>
  <button type="submit">Save</button>
</form>
</body>
</html>
