<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create driver controller</title>
</head>
<body>
<h1>
  Please fill the form in:
</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Driver's name  <input type="text" name="name"><br>
  Driver's license number <input type="text" name="number"><br>
  <button type="submit">Submit</button>
</form>
</body>
</html>
