<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Adding new manufacturer to DB</title>
</head>
<body>
<h1>Adding new manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name of manufacturer: <input type="text" name="name"> <br>
  Country: <input type="text" name="country"> <br>
  <button type="submit">Save</button>
</form>
</body>
</html>

