<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding new driver to DB</title>
</head>
<body>
<h1>Adding new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/views/addDriver">
  Name of driver: <input type="text" name="name"> <br>
  Licence number: <input type="text" name="licenseNumber"> <br>
  <button type="submit">Save</button>
</form>
</body>
</html>
