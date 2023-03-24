<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Update manufacturer</title>
</head>

<body>
<h2>Update manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/update?${manufacturer.id}">
  <label for="manufacturer_id">ID</label><br>
  <input type="text" id="manufacturer_id" name="manufacturer_id" readonly="true" value="${manufacturer.id}"><br>
  <label for="manufacturer_name">Name</label><br>
  <input type="text" id="manufacturer_name" name="manufacturer_name" value="${manufacturer.name}"><br>
  <label for="manufacturer_country">License number</label><br>
  <input type="text" id="manufacturer_country" name="manufacturer_country" value="${manufacturer.country}"><br><br>
  <input type="submit" value="Save">
  <input type="button" value="Return" onclick="history.back()">
</form>
</body>
</html>
