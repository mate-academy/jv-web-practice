<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>Create new car</h1>
<form method="post" style="font-size: 25px" action="${pageContext.request.contextPath}/cars/add-driver">
  driver
  <select name="driver_id" style="font-size: 25px">
    <c:forEach items="${drivers}" var="driver">
      <option value="${driver.id}">
        <c:out value="${driver.name}" />
      </option>
    </c:forEach>
  </select><br>
  add to car
  <select name="car_id" style="font-size: 25px">
    <c:forEach items="${cars}" var="car">
      <option value="${car.id}">
        <c:out value="${car.model}" />
      </option>
    </c:forEach>
  </select><br>
  <button style="font-size: 25px" type="submit">Confirm</button>
</form>
</body>
</html>
