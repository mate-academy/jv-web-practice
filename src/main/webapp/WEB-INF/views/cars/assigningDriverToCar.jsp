<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver:
  <select name="driver">
    <c:forEach items="${drivers}" var="driver">
      <option><c:out value="${driver.name}"/></option>
    </c:forEach>
  </select><br>
  assign to the Car:
  <select name="car">
    <c:forEach items="${cars}" var="car">
      <option><c:out value="${car.model}"/></option>
    </c:forEach>
  </select><br>
  <button type="submit">Assign</button>
</form>
</body>
</html>