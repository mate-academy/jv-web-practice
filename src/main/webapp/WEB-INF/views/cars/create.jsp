<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  <label for="model">Model: </label><br>
  <input id ="model" name = "model" type="text" required><br>
  <label for="manufacturer">Select manufacturer: </label><br>
  <select id = "manufacturer" name="manufacturer_id" required>
    <c:forEach  items="${manufacturers}" var="manufacturer">
      <option value="${manufacturer.id}"><c:out value="${manufacturer.name}" /></option>
    </c:forEach>
  </select>
  <br>
  <button type="submit">Create car</button>
</form>
</body>
</html>
