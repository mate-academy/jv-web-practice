<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Create new driver</h1>
  <form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Driver name</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="license_number">License number</label><br>
    <input type="text" id="license_number" name="license_number"><br>
    <input type="submit" value="Submit">
  </form>
</body>
</html>
